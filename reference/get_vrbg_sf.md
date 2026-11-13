# Get reference datasets for administrative borders in Flanders

\`get_vrbg_sf()\` Get an OGC Simple Features collection that is part of
the Provisional Reference File of Municipal Borders (Voorlopig
Referentiebestand Gemeentegrenzen) as published through the OGC Features
API of the Flemish Government (see:
<https://metadata.vlaanderen.be/srv/dut/catalog.search#/metadata/3c1e59e6-8a28-46be-b31a-eb838376cc65>).

## Usage

``` r
get_vrbg_sf(collection = "Refgem", version = "VRBG", crs = "EPSG:31370")
```

## Arguments

- collection:

  a string representing the collection (i.e. type of administrative
  unit) that should be returned. Possible values for the default version
  of the reference data set are:

  - Refgemmunicipalities, default

  - 'Refgew'Flemish region

  - Refprvprovinces

  - 'Refarr'arrondissements

  The collection names are case-sensitive.

- version:

  a string representing the version of the reference file. Default is
  'VRBG', which is always the most recent version. specific versions are
  also possible (e.g. 'VRBG2003'). Note that not all versions contain
  the same collections.

- crs:

  a string representing the EPSG code for the coordinate reference
  system. Default value is 'EPSG:31370' for Belgian Lambert 1972. Other
  likely values are 'EPSG:4326' (WGS84), 'EPSG:3812' (Belgian
  Lambert 2008) and 'EPSG:4258' (ETRS89). For a complete list of
  supported reference systems, inspect the collections endpoint.

## Value

An object of class sf (see
[st_read](https://r-spatial.github.io/sf/reference/st_read.html)). The
object has a comment containing the retrieval_time and retrieval_url.

## Examples

``` r
get_vrbg_sf()
#> Simple feature collection with 285 features and 8 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 21991.63 ymin: 153058.3 xmax: 258871.8 ymax: 244027.2
#> Projected CRS: BD72 / Belgian Lambert 72
#> First 10 features:
#>           id UIDN OIDN TERRID NISCODE                         NAAM  DATPUBLBS
#> 1   Refgem.1 1044  316    371   11002                    Antwerpen 2024-05-24
#> 2   Refgem.2 1045  317    372   46030 Beveren-Kruibeke-Zwijndrecht 2024-05-24
#> 3   Refgem.3 1046  318    373   73110               Bilzen-Hoeselt 2024-05-24
#> 4   Refgem.4 1047  319    374   73111            Tongeren-Borgloon 2024-05-24
#> 5   Refgem.5 1048  320    375   44086            Nazareth-De Pinte 2024-05-24
#> 6   Refgem.6 1049  321    376   23106                   Pajottegem 2024-05-24
#> 7   Refgem.7 1050  322    377   71071              Tessenderlo-Ham 2024-05-24
#> 8   Refgem.8 1051  323    378   71072                      Hasselt 2024-05-24
#> 9   Refgem.9 1052  324    379   44087                    Lochristi 2024-05-24
#> 10 Refgem.10 1053  325    380   46029                      Lokeren 2024-05-24
#>         NUMAC                       geometry
#> 1  2024004724 MULTIPOLYGON (((150042.1 20...
#> 2  2024004725 MULTIPOLYGON (((144546.5 20...
#> 3  2024004718 MULTIPOLYGON (((226997.6 16...
#> 4  2024004719 MULTIPOLYGON (((226304 1571...
#> 5  2024004722 MULTIPOLYGON (((97820.52 18...
#> 6  2024004728 MULTIPOLYGON (((123085.8 15...
#> 7  2024004727 MULTIPOLYGON (((198380.6 18...
#> 8  2024004729 MULTIPOLYGON (((223394.4 16...
#> 9  2024004730 MULTIPOLYGON (((114193.2 19...
#> 10 2024004721 MULTIPOLYGON (((119118.2 19...
get_vrbg_sf('Refarr')
#> Simple feature collection with 22 features and 7 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 21991.63 ymin: 153058.3 xmax: 258871.8 ymax: 244027.2
#> Projected CRS: BD72 / Belgian Lambert 72
#> First 10 features:
#>           id UIDN OIDN TERRID            NAAM NISCODE NUTS3
#> 1   Refarr.1   90   22    340         Hasselt   71000 BE224
#> 2   Refarr.2   91    3    324       Diksmuide   32000 BE252
#> 3   Refarr.3   92   14    326       Roeselare   36000 BE256
#> 4   Refarr.4   93   19    343           Tielt   37000 BE257
#> 5   Refarr.5   94    4    333     Dendermonde   42000 BE232
#> 6   Refarr.6   95   18    322        Oostende   35000 BE255
#> 7   Refarr.7   96   12    337       Antwerpen   11000 BE211
#> 8   Refarr.8   97    9    336        Mechelen   12000 BE212
#> 9   Refarr.9   98   13    348        Turnhout   13000 BE213
#> 10 Refarr.10   99    5    347 Halle-Vilvoorde   23000 BE241
#>                          geometry
#> 1  MULTIPOLYGON (((205100.2 15...
#> 2  MULTIPOLYGON (((40548.2 178...
#> 3  MULTIPOLYGON (((61225.64 17...
#> 4  MULTIPOLYGON (((77003.94 17...
#> 5  MULTIPOLYGON (((114185.3 18...
#> 6  MULTIPOLYGON (((55653.55 19...
#> 7  MULTIPOLYGON (((155752.9 19...
#> 8  MULTIPOLYGON (((165023.7 18...
#> 9  MULTIPOLYGON (((189854.3 23...
#> 10 MULTIPOLYGON (((123085.8 15...
get_vrbg_sf(collection = 'Refarr', crs = 'EPSG:3812')
#> Simple feature collection with 22 features and 7 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 521988.6 ymin: 653055.7 xmax: 758872 ymax: 744030.5
#> Projected CRS: ETRS89 / Belgian Lambert 2008
#> First 10 features:
#>           id UIDN OIDN TERRID            NAAM NISCODE NUTS3
#> 1   Refarr.1   90   22    340         Hasselt   71000 BE224
#> 2   Refarr.2   91    3    324       Diksmuide   32000 BE252
#> 3   Refarr.3   92   14    326       Roeselare   36000 BE256
#> 4   Refarr.4   93   19    343           Tielt   37000 BE257
#> 5   Refarr.5   94    4    333     Dendermonde   42000 BE232
#> 6   Refarr.6   95   18    322        Oostende   35000 BE255
#> 7   Refarr.7   96   12    337       Antwerpen   11000 BE211
#> 8   Refarr.8   97    9    336        Mechelen   12000 BE212
#> 9   Refarr.9   98   13    348        Turnhout   13000 BE213
#> 10 Refarr.10   99    5    347 Halle-Vilvoorde   23000 BE241
#>                          geometry
#> 1  MULTIPOLYGON (((705101.4 65...
#> 2  MULTIPOLYGON (((540547.7 67...
#> 3  MULTIPOLYGON (((561226.1 67...
#> 4  MULTIPOLYGON (((577003.8 67...
#> 5  MULTIPOLYGON (((614183.8 68...
#> 6  MULTIPOLYGON (((555651 6947...
#> 7  MULTIPOLYGON (((655749.5 69...
#> 8  MULTIPOLYGON (((665021.4 68...
#> 9  MULTIPOLYGON (((689845.5 73...
#> 10 MULTIPOLYGON (((623087.8 65...
```
