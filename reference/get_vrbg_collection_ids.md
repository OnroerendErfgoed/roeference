# Get collection ID's of administrative units in Flanders

\`get_vrbg_collection_ids()\` get an character vector of the ID's of
collections present in a specific version of the Provisional Reference
File of Municipal Borders (Voorlopig Referentiebestand Gemeentegrenzen)
as published through the OGC Features API of the Flemish Government
(see:
https://metadata.vlaanderen.be/srv/dut/catalog.search#/metadata/3c1e59e6-8a28-46be-b31a-eb838376cc65).

## Usage

``` r
get_vrbg_collection_ids(version = "VRBG")
```

## Arguments

- version:

  a string representing the version of the reference file. Default is
  'VRBG', which is always the most recent version. specific versions are
  also possible (e.g. 'VRBG2003').

## Value

character vector containing collection id's.

## Examples

``` r
get_vrbg_collection_ids()
#> [1] "Grensinfo" "Refarr"    "Refgem"    "Refgew"    "Refprv"   
get_vrbg_collection_ids('VRBG2003')
#>  [1] "Grensinfo"  "Refarr"     "RefarrG10"  "RefarrG100" "Refgem"    
#>  [6] "RefgemG10"  "RefgemG100" "Refgew"     "RefgewG10"  "RefgewG100"
#> [11] "Refprv"     "RefprvG10"  "RefprvG100"
get_vrbg_collection_ids(version = 'VRBG2003')
#>  [1] "Grensinfo"  "Refarr"     "RefarrG10"  "RefarrG100" "Refgem"    
#>  [6] "RefgemG10"  "RefgemG100" "Refgew"     "RefgewG10"  "RefgewG100"
#> [11] "Refprv"     "RefprvG10"  "RefprvG100"
```
