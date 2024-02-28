#' Get Flanders Heritage Inventory designation objects (aanduidingsobjecten)
#'
#' `get_oe_aanduidingsobjecten()` get an OGC Simple Features collection
#' containing the designated heritage sites (protected sites and inventorised
#' immovable heritage). The data is downloaded from
#' \url{https://geo.onroerenderfgoed.be/downloads}.  The coordinate reference system
#' is EPSG:31370.
#'
#' @param layer layer to be returned from the downloaded zip file. Default value
#'    is 'aanduidingsobjecten', containing all types of designation objects.
#'    Other values are:
#'    \itemize{
#'     \item{aanduidingsobjecten_historiek} {Designation objects, including
#'       designations that are no longer valid.}
#'    \item{bes_arch_site} {Protected archaeological sites / Beschermde
#'       archeologische sites}
#'    \item{bes_landschap} {Protected Landscape / Beschermd cultuurhistorische
#'       landschappen}
#'    \item{bes_monument} {Protected Monument / Beschermd monumenten}
#'    \item{bes_overgangszone} {Transitional zone' / Overganszones}
#'    \item{bes_sd_gezicht} {Protected cityscape, / Beschermde stads-
#'       of dorpsgezichten}
#'    \item{erfgoedls} {Heritage landscape / Erfgoedlandschap}
#'    \item{gga} {Area where no archaeology is to be expected / Gebieden waar
#'       geen archeologie te verwachten valt}
#'    \item{unesco_kern} {UNESCO World Heritage site - core area / UNESCO
#'       werelderfgoed - kernzones}
#'    \item{unesco_buffer} {UNESCO World Heritage site - buffer area / UNESCO
#'       werelderfgoed - bufferzones}
#'    \item{vast_az} {Archaeological zone / Vastgestelde archeologische zone}
#'    \item{vast_be} {Architectural heritage / Vastgesteld bouwkundig erfgoed}
#'    \item{vast_la} {Landscape atlas / Vastgestelde landschapsatlas}
#'    \item{vast_le} {Landscape elements / Vastgestelde landschapselementen}
#'    }
#'
#' @returns An object of class sf (see \link[sf]{st_read}). The object has a
#' comment containing the retrieval_time and retrieval_url.
#'
#' @examples
#' get_oe_aanduidingsobjecten()
#' get_oe_aanduidingsobjecten('vast_la')
#' get_oe_aanduidingsobjecten(layer = 'vast_la')
#' @export
get_oe_aanduidingsobjecten <- function(layer = 'aanduidingsobjecten') {

  # setup dir and filenames
  download_dir <- tempdir()
  ao_dir <- file.path(download_dir, 'aanduidingsobjecten')
  zip_name <- 'aanduidingsobjecten.zip'
  zip_path <- file.path(download_dir, zip_name)

  # download dataset
  resp <- request('https://geo.onroerenderfgoed.be') |>
            req_url_path_append('downloads') |>
            req_url_path_append(zip_name) |>
            req_retry(max_tries = 5) |>
            req_perform(path=zip_path)

  # unzip and remove zipfile
  unzip(zip_path, exdir = ao_dir)
  invisible(file.remove(zip_path))

  # read shapefile
  df <- st_read(file.path(ao_dir, paste(layer, 'shp', sep = '.')), quiet = TRUE)

  # add metadata
  comment(df) <- c (
      retrieval_url = resp_url(resp),
      retrieval_time = format(resp_date(resp), "%Y-%m-%d %H:%M:%S %Z"))

  return(df)
}
