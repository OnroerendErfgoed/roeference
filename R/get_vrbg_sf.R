#' Get reference datasets for administrative borders in Flanders
#'
#' `get_vrbg_sf()` Get an OGC Simple Features collection that is
#'   part of the Provisional Reference File of Municipal Borders (Voorlopig
#'   Referentiebestand Gemeentegrenzen) as published through the OGC Features API
#'   of the Flemish Government (see:
#'   \url{https://metadata.vlaanderen.be/srv/dut/catalog.search#/metadata/3c1e59e6-8a28-46be-b31a-eb838376cc65}).
#'
#'
#' @param collection a string representing the
#'   collection (i.e. type of administrative unit) that should be returned.
#'   Possible values for the default version of the reference data set are:
#'   \itemize{
#'     \item{Refgem}{municipalities, default}
#'     \item{'Refgew'}{Flemish region}
#'     \item{Refprv}{}{provinces}
#'     \item{'Refarr'}{arrondissements}
#'   }
#'   The collection names are case-sensitive.
#'
#' @param version a string representing the version of the reference file.
#'   Default is 'VRBG', which is always the most recent version. specific
#'   versions are also possible (e.g. 'VRBG2003'). Note that not all versions
#'   contain the same collections.
#'
#' @param crs a string representing the EPSG code for the coordinate reference
#'   system. Default value is 'EPSG:31370' for Belgian Lambert 1972. Other likely
#'   values are 'EPSG:4326' (WGS84), 'EPSG:3812' (Belgian Lambert 2008)
#'   and 'EPSG:4258' (ETRS89). For a complete list of supported reference systems,
#'   inspect the collections endpoint.
#'
#' @returns An object of class sf (see \link[sf]{st_read}). The object has a
#'   comment containing the retrieval_time and retrieval_url.
#'
#' @examples
#' get_vrbg_sf()
#' get_vrbg_sf('Refarr')
#' get_vrgb_sf(collection = 'Refarr', crs = 'EPSG:3812')
#' @export
get_vrbg_sf <- function(collection = 'Refgem',
                        version = 'VRBG', crs = 'EPSG:31370') {

  #parameter_validation
  stopifnot( is_epsg(crs),
             is.character(version),
             crs %in% get_vrbg_supported_crs(version),
             collection %in% get_vrbg_collection_ids(version) )

  # Download collection items
  request('https://geo.api.vlaanderen.be') |>
    req_url_path_append(version) |>
    req_url_path_append('ogc') |>
    req_url_path_append('features') |>
    req_url_path_append('collections') |>
    req_url_path_append(collection) |>
    req_url_path_append('items') |>
    req_url_query(crs=sprintf('urn:ogc:def:crs:%s', crs)) |>
    req_headers("Accept" = "application/geo+json") |>
    req_retry(max_tries = 5) |>
    req_perform() |>
    resp_sf_from_geojson()
}
