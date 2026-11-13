# Get Flanders Heritage dataset of archaeology memorandums and memorandums (archeologienotas en notas)

\`get_oe_notas()\` get an OGC Simple Features collection containing
archaeology memorandums (archeologienotas) and memorandums (notas)
resulting from preliminary archaeological research submitted to Flanders
Heritage.

## Usage

``` r
get_oe_notas()
```

## Value

An object of class sf (see
[st_read](https://r-spatial.github.io/sf/reference/st_read.html)). The
object has a comment containing the retrieval_time and retrieval_url.

## Examples

``` r
get_oe_notas()
#> Simple feature collection with 31180 features and 11 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 22912.48 ymin: 154008.9 xmax: 257217.8 ymax: 243219.2
#> Projected CRS: BD72 / Belgian Lambert 72
#> First 10 features:
#>       ID                                             NAAM
#> 1  36892              Vooronderzoek Holsbeek Leuvensebaan
#> 2  36893           Vooronderzoek Mol Mol, Hemelrijkstraat
#> 3  36891            Vooronderzoek Oudsbergen Laerstraat 3
#> 4  36895   Vooronderzoek Bornem Bornem Dr. De Putterplein
#> 5  36897 Vooronderzoek Koksijde Koksijde Ten Bogaerdelaan
#> 6  36896              Vooronderzoek Dendermonde Kleinzand
#> 7  36898              Vooronderzoek Roosdaal Piezelstraat
#> 8  36903             Vooronderzoek Wielsbeke Rijksweg 200
#> 9  36915           Vooronderzoek Arendonk Polderstraat 11
#> 10 36916                 Vooronderzoek Geel Bottenhoef 15
#>                                                          URI
#> 1  https://id.erfgoed.net/archeologie/archeologienotas/36892
#> 2  https://id.erfgoed.net/archeologie/archeologienotas/36893
#> 3  https://id.erfgoed.net/archeologie/archeologienotas/36891
#> 4             https://id.erfgoed.net/archeologie/notas/36895
#> 5             https://id.erfgoed.net/archeologie/notas/36897
#> 6             https://id.erfgoed.net/archeologie/notas/36896
#> 7  https://id.erfgoed.net/archeologie/archeologienotas/36898
#> 8             https://id.erfgoed.net/archeologie/notas/36903
#> 9  https://id.erfgoed.net/archeologie/archeologienotas/36915
#> 10 https://id.erfgoed.net/archeologie/archeologienotas/36916
#>                                                     TYPE_URI        TYPE_NAAM
#> 1      https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#> 2      https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#> 3      https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#> 4  https://id.erfgoed.net/vocab/ontology#ArcheologienotaNota            notas
#> 5  https://id.erfgoed.net/vocab/ontology#ArcheologienotaNota            notas
#> 6  https://id.erfgoed.net/vocab/ontology#ArcheologienotaNota            notas
#> 7      https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#> 8  https://id.erfgoed.net/vocab/ontology#ArcheologienotaNota            notas
#> 9      https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#> 10     https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#>     DATUM_IND MTRGL_GEEN UITG_VO BH_IN_SITU OPGRAVING VRDR_VERW
#> 1  2026-06-05      FALSE    TRUE      FALSE     FALSE     FALSE
#> 2  2026-06-05      FALSE    TRUE      FALSE     FALSE     FALSE
#> 3  2026-06-05       TRUE   FALSE      FALSE     FALSE     FALSE
#> 4  2026-06-05       TRUE   FALSE      FALSE     FALSE     FALSE
#> 5  2026-06-05      FALSE   FALSE      FALSE      TRUE     FALSE
#> 6  2026-06-05      FALSE   FALSE      FALSE      TRUE     FALSE
#> 7  2026-06-05       TRUE   FALSE      FALSE     FALSE     FALSE
#> 8  2026-06-06       TRUE   FALSE      FALSE     FALSE     FALSE
#> 9  2026-06-26      FALSE    TRUE      FALSE     FALSE     FALSE
#> 10 2026-08-10      FALSE    TRUE      FALSE     FALSE     FALSE
#>                          geometry
#> 1  MULTIPOLYGON (((176176.5 17...
#> 2  MULTIPOLYGON (((202337.1 20...
#> 3  MULTIPOLYGON (((235581.2 19...
#> 4  MULTIPOLYGON (((140603.8 19...
#> 5  MULTIPOLYGON (((28824.08 19...
#> 6  MULTIPOLYGON (((130954 1930...
#> 7  MULTIPOLYGON (((127930.2 17...
#> 8  MULTIPOLYGON (((80422.68 17...
#> 9  MULTIPOLYGON (((201953.1 22...
#> 10 MULTIPOLYGON (((190606.2 20...
```
