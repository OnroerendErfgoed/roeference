is_epsg <- function (epsg_code) {
  if ( length(grep('^EPSG:(\\d)+$', epsg_code)) == 1 ) TRUE else FALSE
}
