# Get supported CRS for administrative borders in Flanders

\`get_vrbg_supported_crs()\` get an character vector of the EPSG codes
of coordinate reference systems supported by a specific version of the
Provisional Reference File of Municipal Borders (Voorlopig
Referentiebestand Gemeentegrenzen) as published through the OGC Features
API of the Flemish Government (see: [metadata catalog
entry](https://metadata.vlaanderen.be/srv/dut/catalog.search#/metadata/3c1e59e6-8a28-46be-b31a-eb838376cc65))

## Usage

``` r
get_vrbg_supported_crs(version = "VRBG")
```

## Arguments

- version:

  a string representing the version of the reference file. Default is
  'VRBG', which is always the most recent version. specific versions are
  also possible (e.g. 'VRBG2003').

## Value

character vector containing EPSG codes in the format 'EPSG:\<number\>'.

## Examples

``` r
get_vrbg_supported_crs()
#>  [1] "EPSG:31370"  "EPSG:4326"   "EPSG:4258"   "EPSG:3812"   "EPSG:3043"  
#>  [6] "EPSG:32631"  "EPSG:25831"  "EPSG:3857"   "EPSG:102100" "EPSG:3035"  
get_vrbg_supported_crs("VRBG2003")
#>  [1] "EPSG:31370"  "EPSG:4326"   "EPSG:4258"   "EPSG:3812"   "EPSG:3043"  
#>  [6] "EPSG:32631"  "EPSG:25831"  "EPSG:3857"   "EPSG:102100" "EPSG:3035"  
get_vrbg_supported_crs(version = "VRBG2003")
#>  [1] "EPSG:31370"  "EPSG:4326"   "EPSG:4258"   "EPSG:3812"   "EPSG:3043"  
#>  [6] "EPSG:32631"  "EPSG:25831"  "EPSG:3857"   "EPSG:102100" "EPSG:3035"  
```
