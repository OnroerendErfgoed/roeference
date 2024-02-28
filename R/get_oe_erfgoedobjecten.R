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
#' get_oe_erfgoedobjecten(layer = 'vast_be')
#' @export
get_oe_erfgoedobjecten <- function(layer = 'erfgoedobjecten') {

  # setup dir and filenames
  download_dir = tempdir()
  eo_dir = file.path(download_dir, 'erfgoedobjecten')
  zip_name <- 'erfgoedobjecten.zip'

  # download dataset
  resp <- request('https://geo.onroerenderfgoed.be') |>
            req_url_path_append('downloads') |>
            req_url_path_append(zip_name) |>
            req_retry(max_tries = 5) |>
            req_perform(path=file.path(download_dir, zip_name))

  # unzip and remove zipfile
  unzip(file.path(download_dir, zip_name), exdir = eo_dir)

  # read shapefile
  df <- st_read(file.path(eo_dir, paste(layer, 'shp', sep = '.')), quiet = TRUE)

  # add metadata
  comment(df) <- c (
    retrieval_url = resp_url(resp),
    retrieval_time = format(resp_date(resp), "%Y-%m-%d %H:%M:%S %Z"))

  return(df)
}
