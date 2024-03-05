#' Extract sf object from httr2 response object containing geojson
#'
#' `resp_sf_from_geojson` This function extracts a Simple Features (sf) object
#' from an httr2 response object when the response body contains a feature set
#' in geojson format.
#'
#' @param resp a httr2 response object
#'
#' @param annotated a boolean value (default TRUE). When TRUE, the returned
#' object contains metdadata (retrieval_url and retrieval_time) in the object's
#' comment.
#'
#' @returns An object of class sf (see \link[sf]{st_read}). If the annotated
#' parameter is TRUE (default), the returned object will have a
#' comment containing the retrieval_time and retrieval_url.
#'
#' @examples
#' \dontrun{
#' resp_from_geojson(resp)
#' resp_from_geojson(resp, annotated=TRUE)
#' }
#' @export
resp_sf_from_geojson <- function (resp, annotated = TRUE) {

    stopifnot(resp_content_type(resp) == 'application/geo+json')

    df <- resp |>
          resp_body_string() |>
          st_read(quiet=TRUE)

    if (annotated) {
      comment(df) <- c( retrieval_url = resp_url(resp),
                        retrieval_time = format(resp_date(resp),
                                                '%Y-%m-%d %H:%M:%S %Z') )
    }
    return(df)
}
