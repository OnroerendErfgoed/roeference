# Get Flanders Heritage layers containing archaeological reports (archeologierapporten)

\`get_oe_archeologierapporten()\` get an OGC Simple Features collection
containing the initial reports of archeological excavation projects,
submitted to Flanders Heritage within two months of the completion of
fieldwork.

## Usage

``` r
get_oe_archeologierapporten()
```

## Value

An object of class sf (see
[st_read](https://r-spatial.github.io/sf/reference/st_read.html)). The
object has a comment containing the retrieval_time and retrieval_url.

## Examples

``` r
get_oe_archeologierapporten()
#> Simple feature collection with 2180 features and 7 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 21994.34 ymin: 155940 xmax: 251918.9 ymax: 238878.2
#> Projected CRS: BD72 / Belgian Lambert 72
#> First 10 features:
#>     ID                                                     NAAM
#> 1   97                Vooronderzoek Bocholt De Bocholter Graven
#> 2  210         Vooronderzoek De Pinte De Pinte Ter Groene Walle
#> 3  166                  Opgraving Asse Toevalsvondstdossier 258
#> 4  231                Vooronderzoek Sint-Gillis-Waas Reepstraat
#> 5  169        Opgraving Brecht Brecht Molenstraat appartementen
#> 6  281 Opgraving Zoutleeuw Zoutleeuw-Ossenwegstraat ("rotonde")
#> 7  291                Opgraving Damme Monnikerede-Stadswaterput
#> 8  239                                Opgraving Wevelgem GUMO18
#> 9  252          Opgraving Herentals Herentals Zavelstraat 54-58
#> 10 172          Opgraving Kluisbergen Kluisbergen Berchemstraat
#>                                                               TYPE_URI
#> 1  https://id.erfgoed.net/vocab/ontology#ArcheologieArcheologierapport
#> 2  https://id.erfgoed.net/vocab/ontology#ArcheologieArcheologierapport
#> 3  https://id.erfgoed.net/vocab/ontology#ArcheologieArcheologierapport
#> 4  https://id.erfgoed.net/vocab/ontology#ArcheologieArcheologierapport
#> 5  https://id.erfgoed.net/vocab/ontology#ArcheologieArcheologierapport
#> 6  https://id.erfgoed.net/vocab/ontology#ArcheologieArcheologierapport
#> 7  https://id.erfgoed.net/vocab/ontology#ArcheologieArcheologierapport
#> 8  https://id.erfgoed.net/vocab/ontology#ArcheologieArcheologierapport
#> 9  https://id.erfgoed.net/vocab/ontology#ArcheologieArcheologierapport
#> 10 https://id.erfgoed.net/vocab/ontology#ArcheologieArcheologierapport
#>             TYPE_NAAM                                         KADER  DATUM_IND
#> 1  archeologierapport vooronderzoek wetenschappelijke vraagstelling 2017-11-30
#> 2  archeologierapport vooronderzoek wetenschappelijke vraagstelling 2018-08-02
#> 3  archeologierapport     opgraving wetenschappelijke vraagstelling 2018-05-24
#> 4  archeologierapport vooronderzoek wetenschappelijke vraagstelling 2018-09-12
#> 5  archeologierapport                 vergunningsplichtige ingrepen 2018-05-30
#> 6  archeologierapport                 vergunningsplichtige ingrepen 2018-11-08
#> 7  archeologierapport     opgraving wetenschappelijke vraagstelling 2018-11-19
#> 8  archeologierapport                 vergunningsplichtige ingrepen 2018-09-19
#> 9  archeologierapport                 vergunningsplichtige ingrepen 2018-10-09
#> 10 archeologierapport                 vergunningsplichtige ingrepen 2018-06-05
#>                                                            URI
#> 1   https://id.erfgoed.net/archeologie/archeologierapporten/97
#> 2  https://id.erfgoed.net/archeologie/archeologierapporten/210
#> 3  https://id.erfgoed.net/archeologie/archeologierapporten/166
#> 4  https://id.erfgoed.net/archeologie/archeologierapporten/231
#> 5  https://id.erfgoed.net/archeologie/archeologierapporten/169
#> 6  https://id.erfgoed.net/archeologie/archeologierapporten/281
#> 7  https://id.erfgoed.net/archeologie/archeologierapporten/291
#> 8  https://id.erfgoed.net/archeologie/archeologierapporten/239
#> 9  https://id.erfgoed.net/archeologie/archeologierapporten/252
#> 10 https://id.erfgoed.net/archeologie/archeologierapporten/172
#>                          geometry
#> 1  MULTIPOLYGON (((239400.1 20...
#> 2  MULTIPOLYGON (((99003.5 187...
#> 3  MULTIPOLYGON (((140066 1801...
#> 4  MULTIPOLYGON (((129830.2 21...
#> 5  MULTIPOLYGON (((168708.4 22...
#> 6  MULTIPOLYGON (((202149.7 16...
#> 7  MULTIPOLYGON (((75967.53 21...
#> 8  MULTIPOLYGON (((66318.84 17...
#> 9  MULTIPOLYGON (((183543.2 20...
#> 10 MULTIPOLYGON (((90500.67 16...
```
