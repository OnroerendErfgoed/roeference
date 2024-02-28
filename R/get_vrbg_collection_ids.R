#' Get collection ID's of administrative units in Flanders
#'
#' `get_vrbg_collection_ids()` get an character vector of the ID's of
#' collections present in a  specific version of the Provisional Reference File
#' of Municipal Borders (Voorlopig Referentiebestand Gemeentegrenzen) as
#' published through the OGC Features API of the Flemish Government (see:
#' https://metadata.vlaanderen.be/srv/dut/catalog.search#/metadata/3c1e59e6-8a28-46be-b31a-eb838376cc65).
#'
#' @param version a string representing the version of the reference file.
#' Default is 'VRBG', which is always the most recent version. specific
#' versions are also possible (e.g. 'VRBG2003').
#'
#' @returns character vector containing collection id's.
#'
#' @examples
#' get_vrbg_collection_ids()
#' get_vrbg_collection_ids('VRBG2003')
#' get_vrbg_collection_ids(version = 'VRBG2003')
#' @export
get_vrbg_collection_ids <- function(version = 'VRBG') {

  #parameter_validation
  stopifnot( is.character(version))

  request('https://geo.api.vlaanderen.be') |>
    req_url_path_append(version) |>
    req_url_path_append('ogc') |>
    req_url_path_append('features') |>
    req_url_path_append('collections') |>
    req_headers("Accept" = "application/geo+json") |>
    req_retry(max_tries = 5) |>
    req_perform() |>
    resp_body_json() |>
    getElement('collections') |>
    vapply( function(x) { x$id }, character(1) )
}
