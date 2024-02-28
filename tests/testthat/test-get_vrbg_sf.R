test_that("wrong crs format throws error", {
  expect_error(get_vrbg_sf(crs = '31370'),
               'is_epsg\\(crs\\) is not TRUE')
})


test_that("version not a character string throws error", {
  expect_error(get_vrbg_sf(version = 1234),
               'is.character\\(version\\) is not TRUE')
})


test_that("unsupported crs generates error", {
  local_mocked_bindings(
    get_vrbg_supported_crs = function(version = 'VRBG') { c('EPSG:31370','EPSG:3812') }
  )
  expect_error(get_vrbg_sf(crs='EPSG:3814'),
               'crs %in% get_vrbg_supported_crs\\(version\\) is not TRUE')
})


test_that("non-existing collection generates error", {
  local_mocked_bindings(
    get_vrbg_supported_crs = function(version = 'VRBG') { c('EPSG:31370','EPSG:3812') },
    get_vrbg_collection_ids = function(version = 'VRBG') { c('Refgem','Refgew') }
    )
  expect_error(get_vrbg_sf('non-existing-col'),
               'collection %in% get_vrbg_collection_ids\\(version\\) is not TRUE')
})
