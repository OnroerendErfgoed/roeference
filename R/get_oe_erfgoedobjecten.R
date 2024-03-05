#' Get heritage objects (erfgoedobjecten)
#'
#' `get_oe_erfgoedobjecten()` get an OGC Simple Features collection
#' containing the heritage objects of the Flemish Inventory of Immovable
#' Heritage (Inventaris Onroerend Erfgoed). The data is downloaded from
#' \url{https://geo.onroerenderfgoed.be/downloads}. The coordinate reference
#' system is EPSG:31370.
#'
#' @param layer Layer to be returned from the downloaded zip file. Default value
#'    is 'erfgoedobjecten'. Other values are 'landschappelijk_gehelen',
#'    'landschappelijk_elementen', 'bouwkundig_elementen', 'bouwkundig_gehelen',
#'    'archeologie_elementen' and 'archeologie_gehelen'.
#'
#' @returns An object of class sf (see \link[sf]{st_read}). The object has a
#' comment containing the retrieval_time and retrieval_url.
#'
#' @examples
#' get_oe_erfgoedobjecten()
#' get_oe_erfgoedobjecten(layer = 'landschappelijk_gehelen')
#' @export
get_oe_erfgoedobjecten <- function(layer = 'erfgoedobjecten') {
  get_oe_layer('erfgoedobjecten.zip', layer = layer)
}
