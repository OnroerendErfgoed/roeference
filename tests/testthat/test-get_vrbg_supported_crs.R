test_that("throw_error on HTTP errors", {
  mock_404 <- function(req) { response(status_code = 404) }
  expect_error(
    httr2::with_mocked_responses(
      mock_404,
      get_vrbg_supported_crs()
    ),
    'HTTP 404 Not Found.')
}
)

test_that("List ectracted from JSON response works", {

  mock_ok <- function(req) {
    body <- charToRaw(jsonlite::toJSON(list(crs = c("http://www.opengis.net/def/crs/EPSG/0/31370",
                                                    "http://www.opengis.net/def/crs/EPSG/0/4326"))))
    httr2::response(status_code = 200,
                    headers = list('content-type' = 'application/json',
                                   'content-encoding' = 'UTF-8',
                                   'content-length' = length(body)),
                    body = body)
  }

  expect_equal(
    httr2::with_mocked_responses(mock_ok, get_vrbg_supported_crs()),
    c('EPSG:31370','EPSG:4326')
  )
}
)
