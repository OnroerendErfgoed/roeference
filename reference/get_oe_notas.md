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
#> Simple feature collection with 31186 features and 11 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 22912.48 ymin: 154008.9 xmax: 257217.8 ymax: 243219.2
#> Projected CRS: BD72 / Belgian Lambert 72
#> First 10 features:
#>       ID                                                NAAM
#> 1  37069              Vooronderzoek Gent Mendonk Mendonkdorp
#> 2  37528     Vooronderzoek Brugge Brugge Barrièrestraat 9-11
#> 3  37529       Vooronderzoek Oostkamp Oostkamp Veldstraat 48
#> 4  37541                            Vooronderzoek Rumst N171
#> 5  37543     Vooronderzoek Beringen Paalsesteenweg-Rozenlaan
#> 6  37077 Vooronderzoek Bredene Bredene - Koningin Astridlaan
#> 7  37544   Vooronderzoek Tongeren-Borgloon Graethempoort 7-9
#> 8  37094           Vooronderzoek Lille Lille, Kloosterstraat
#> 9  37868              Vooronderzoek Lo-Reninge Kruisstraat 3
#> 10 37869        Vooronderzoek Gent Gent Kwaadham 9 (GEKWA01)
#>                                                          URI
#> 1             https://id.erfgoed.net/archeologie/notas/37069
#> 2  https://id.erfgoed.net/archeologie/archeologienotas/37528
#> 3  https://id.erfgoed.net/archeologie/archeologienotas/37529
#> 4  https://id.erfgoed.net/archeologie/archeologienotas/37541
#> 5  https://id.erfgoed.net/archeologie/archeologienotas/37543
#> 6  https://id.erfgoed.net/archeologie/archeologienotas/37077
#> 7  https://id.erfgoed.net/archeologie/archeologienotas/37544
#> 8  https://id.erfgoed.net/archeologie/archeologienotas/37094
#> 9  https://id.erfgoed.net/archeologie/archeologienotas/37868
#> 10            https://id.erfgoed.net/archeologie/notas/37869
#>                                                     TYPE_URI        TYPE_NAAM
#> 1  https://id.erfgoed.net/vocab/ontology#ArcheologienotaNota            notas
#> 2      https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#> 3      https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#> 4      https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#> 5      https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#> 6      https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#> 7      https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#> 8      https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#> 9      https://id.erfgoed.net/vocab/ontology#Archeologienota archeologienotas
#> 10 https://id.erfgoed.net/vocab/ontology#ArcheologienotaNota            notas
#>     DATUM_IND MTRGL_GEEN UITG_VO BH_IN_SITU OPGRAVING VRDR_VERW
#> 1  2026-06-21       TRUE   FALSE      FALSE     FALSE     FALSE
#> 2  2026-08-10      FALSE    TRUE      FALSE     FALSE     FALSE
#> 3  2026-08-10       TRUE   FALSE      FALSE     FALSE     FALSE
#> 4  2026-08-12      FALSE    TRUE      FALSE     FALSE     FALSE
#> 5  2026-08-11       TRUE   FALSE      FALSE     FALSE     FALSE
#> 6  2026-06-22       TRUE   FALSE      FALSE     FALSE     FALSE
#> 7  2026-08-11      FALSE    TRUE      FALSE     FALSE     FALSE
#> 8  2026-06-22      FALSE    TRUE      FALSE     FALSE     FALSE
#> 9  2026-09-18      FALSE    TRUE      FALSE     FALSE     FALSE
#> 10 2026-09-18      FALSE   FALSE       TRUE      TRUE     FALSE
#>                          geometry
#> 1  MULTIPOLYGON (((111838.2 20...
#> 2  MULTIPOLYGON (((69182.85 21...
#> 3  MULTIPOLYGON (((73455.91 20...
#> 4  MULTIPOLYGON (((154389.1 20...
#> 5  MULTIPOLYGON (((209917.1 19...
#> 6  MULTIPOLYGON (((52297.85 21...
#> 7  MULTIPOLYGON (((218241.4 16...
#> 8  MULTIPOLYGON (((184185.8 21...
#> 9  MULTIPOLYGON (((37512.92 18...
#> 10 MULTIPOLYGON (((105125.5 19...
```
