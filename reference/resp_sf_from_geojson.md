# Extract sf object from httr2 response object containing geojson

\`resp_sf_from_geojson\` This function extracts a Simple Features (sf)
object from an httr2 response object when the response body contains a
feature set in geojson format.

## Usage

``` r
resp_sf_from_geojson(resp, annotated = TRUE)
```

## Arguments

- resp:

  a httr2 response object

- annotated:

  a boolean value (default TRUE). When TRUE, the returned object
  contains metdadata (retrieval_url and retrieval_time) in the object's
  comment.

## Value

An object of class sf (see
[st_read](https://r-spatial.github.io/sf/reference/st_read.html)). If
the annotated parameter is TRUE (default), the returned object will have
a comment containing the retrieval_time and retrieval_url.

## Examples

``` r
if (FALSE) { # \dontrun{
resp_sf_from_geojson(resp)
resp_sf_from_geojson(resp, annotated = TRUE)
} # }
```
