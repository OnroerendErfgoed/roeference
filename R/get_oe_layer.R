#' Get Flanders Heritage layer containing
#'
#' `get_oe_layer()` get an OGC Simple Features collection
#' containing the specified layer. The package also provides wrapper functions
#' for different layers. It is recommended to use the wrapper functions, as this
#' function is dependent on the implementation of the download service provided
#' by Flanders heritage. i.e. the download file name has to be passed in by
#' calling code.
#'
#' @param download_filename Filename of the zip file containing the layer to
#'   be extracted, as mentioned on the download page \url{https://geo.onroerenderfgoed.be/downloads/}.
#'   e.g. 'archeologie.zip
#'
#' @param layer Name of the layer (shapefile) to be extracted. e.g.
#'   eindverslagen.shp
#'
#' @returns An object of class sf (see \link[sf]{st_read}). The object has a
#'   comment containing the retrieval_time and retrieval_url.
#'
#' @examples
#' get_oe_layer('archeologie.zip', 'eindverslagen')
#' @export
get_oe_layer <- function(download_filename, layer) {

  # setup dir and filenames
  download_dir <- tempdir()
  dir <- file.path(download_dir, layer)
  zip_name <- download_filename
  zip_path <- file.path(download_dir, zip_name)

  # download dataset
  resp <- request('https://geo.onroerenderfgoed.be') |>
    req_url_path_append('downloads') |>
    req_url_path_append(zip_name) |>
    req_retry(max_tries = 5) |>
    req_cache(tempdir(), max_age = 3600) |>
    req_perform(path=zip_path)

  # unzip and remove zipfile
  unzip(zip_path, exdir = dir)
  invisible(file.remove(zip_path))

  # read shapefile
  df <- st_read(file.path(dir, paste(layer, 'shp', sep='.')), quiet = TRUE)

  # add metadata
  comment(df) <- c (
    retrieval_url = resp_url(resp),
    retrieval_time = format(resp_date(resp), "%Y-%m-%d %H:%M:%S %Z"))

  return(df)
}
