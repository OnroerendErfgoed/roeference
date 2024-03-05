#' Get Flanders Heritage layers containing archaeological reports (eindverslagen)
#'
#' `get_oe_eindverslagen()` get an OGC Simple Features collection
#' containing the final reports of archeological projects submitted
#' to Flanders Heritage.
#'
#' @returns An object of class sf (see \link[sf]{st_read}). The object has a
#' comment containing the retrieval_time and retrieval_url.
#'
#' @examples
#' get_oe_eindverslagen()
#' @export
get_oe_eindverslagen <- function() {
  get_oe_layer('archeologie.zip', layer = 'eindverslagen')
}
