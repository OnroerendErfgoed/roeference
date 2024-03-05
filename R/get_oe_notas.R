#' Get Flanders Heritage dataset of archaeology memorandums and memorandums (archeologienotas en notas)
#'
#' `get_oe_notas()` get an OGC Simple Features collection
#' containing archaeology memorandums (archeologienotas) and memorandums (notas)
#' resulting from preliminary archaeological research submitted
#' to Flanders Heritage.
#'
#' @returns An object of class sf (see \link[sf]{st_read}). The object has a
#' comment containing the retrieval_time and retrieval_url.
#'
#' @examples
#' get_oe_notas()
#' @export
get_oe_notas <- function() {
  get_oe_layer('archeologie.zip', layer = 'notas')
}
