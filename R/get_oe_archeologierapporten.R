#' Get Flanders Heritage layers containing archaeological reports (archeologierapporten)
#'
#' `get_oe_archeologierapporten()` get an OGC Simple Features collection
#' containing the initial reports of archeological excavation projects, submitted
#' to Flanders Heritage within two months of the completion of fieldwork.
#'
#' @returns An object of class sf (see \link[sf]{st_read}). The object has a
#' comment containing the retrieval_time and retrieval_url.
#'
#' @examples
#' get_oe_archeologierapporten()
#' @export
get_oe_archeologierapporten <- function() {
  get_oe_layer('archeologie.zip', layer = 'archeologierapporten')
}
