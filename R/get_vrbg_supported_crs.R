#' Get supported CRS for administrative borders in Flanders
#'
#' `get_vrbg_supported_crs()` get an character vector of the EPSG codes of
#' coordinate reference systems supported byspecific version of the
#' Provisional Reference File of Municipal Borders (Voorlopig Referentiebestand
#' Gemeentegrenzen) as published through the OGC Features API of the
#' Flemish Government (see:
#' \href{https://metadata.vlaanderen.be/srv/dut/catalog.search#/metadata/3c1e59e6-8a28-46be-b31a-eb838376cc65}{metadata catalog entry})
#'
#' @param version a string representing the version of the reference file.
#' Default is 'VRBG', which is always the most recent version. specific
#' versions are also possible (e.g. 'VRBG2003').
#'
#' @returns character vector containing EPSG codes in the format 'EPSG:<number>'.
#'
#' @examples
#' get_vrbg_supported_crs()
#' get_vrbg_supported_crs('VRBG2003')
#' get_vrbg_supported_crs(version = 'VRBG2003')
#' @export
get_vrbg_supported_crs <- function(version = 'VRBG') {

  #parameter_validation
  stopifnot( is.character(version))

  crs <-  request('https://geo.api.vlaanderen.be') |>
          req_url_path_append('VRBG') |>
          req_url_path_append('ogc') |>
          req_url_path_append('features') |>
          req_url_path_append('collections') |>
          req_headers("Accept" = "application/geo+json") |>
          req_retry(max_tries = 5) |>
          req_perform() |>
          resp_body_json() |>
          getElement('crs') |>
          sapply( function (x) { paste(strsplit(x, '/')[[1]][6],
                                       strsplit(x, '/')[[1]][8],
                                       sep=':' )})
  crs[grep('EPSG', crs)]
}
