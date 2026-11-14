# Get Flanders Heritage layers containing final archaeological reports (eindverslagen)

\`get_oe_eindverslagen()\` get an OGC Simple Features collection
containing the final reports of archeological excavation projects,
submitted to Flanders Heritage within two years of the completion of
fieldwork.

## Usage

``` r
get_oe_eindverslagen()
```

## Value

An object of class sf (see
[st_read](https://r-spatial.github.io/sf/reference/st_read.html)). The
object has a comment containing the retrieval_time and retrieval_url.

## Examples

``` r
get_oe_eindverslagen()
#> Simple feature collection with 1666 features and 7 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 23586.69 ymin: 155940 xmax: 251918.9 ymax: 238878.2
#> Projected CRS: BD72 / Belgian Lambert 72
#> First 10 features:
#>      ID                                            NAAM
#> 1  3443      Vooronderzoek Brugge Naaldenstraat, Brugge
#> 2  1816                        Opgraving Diest Ezeldijk
#> 3  3058               Vooronderzoek Niel Spaans Toreken
#> 4  2691                      Opgraving Temse Dorpstraat
#> 5  3938 Opgraving Lummen Lummen Meldert Geenmeersstraat
#> 6  1789         Opgraving Holsbeek Kasteel Horst Fase 3
#> 7  3676                 Opgraving Ieper Rijselsepoort 5
#> 8   982             Opgraving Ieper Ieper Meenseweg 556
#> 9  1721               Opgraving Linter Geldenakenstraat
#> 10 2498   Opgraving Kortrijk Kortrijk Condédreef fase 1
#>                                                        TYPE_URI   TYPE_NAAM
#> 1  https://id.erfgoed.net/vocab/ontology#ArcheologieEindverslag eindverslag
#> 2  https://id.erfgoed.net/vocab/ontology#ArcheologieEindverslag eindverslag
#> 3  https://id.erfgoed.net/vocab/ontology#ArcheologieEindverslag eindverslag
#> 4  https://id.erfgoed.net/vocab/ontology#ArcheologieEindverslag eindverslag
#> 5  https://id.erfgoed.net/vocab/ontology#ArcheologieEindverslag eindverslag
#> 6  https://id.erfgoed.net/vocab/ontology#ArcheologieEindverslag eindverslag
#> 7  https://id.erfgoed.net/vocab/ontology#ArcheologieEindverslag eindverslag
#> 8  https://id.erfgoed.net/vocab/ontology#ArcheologieEindverslag eindverslag
#> 9  https://id.erfgoed.net/vocab/ontology#ArcheologieEindverslag eindverslag
#> 10 https://id.erfgoed.net/vocab/ontology#ArcheologieEindverslag eindverslag
#>                                            KADER  DATUM_IND
#> 1  vooronderzoek wetenschappelijke vraagstelling 2025-06-27
#> 2                  vergunningsplichtige ingrepen 2022-03-30
#> 3  vooronderzoek wetenschappelijke vraagstelling 2024-09-02
#> 4                  vergunningsplichtige ingrepen 2023-12-05
#> 5                  vergunningsplichtige ingrepen 2026-07-08
#> 6      opgraving wetenschappelijke vraagstelling 2022-03-01
#> 7                  vergunningsplichtige ingrepen 2025-12-22
#> 8      opgraving wetenschappelijke vraagstelling 2020-08-22
#> 9                  vergunningsplichtige ingrepen 2022-01-10
#> 10                 vergunningsplichtige ingrepen 2023-08-11
#>                                                      URI
#> 1  https://id.erfgoed.net/archeologie/eindverslagen/3443
#> 2  https://id.erfgoed.net/archeologie/eindverslagen/1816
#> 3  https://id.erfgoed.net/archeologie/eindverslagen/3058
#> 4  https://id.erfgoed.net/archeologie/eindverslagen/2691
#> 5  https://id.erfgoed.net/archeologie/eindverslagen/3938
#> 6  https://id.erfgoed.net/archeologie/eindverslagen/1789
#> 7  https://id.erfgoed.net/archeologie/eindverslagen/3676
#> 8   https://id.erfgoed.net/archeologie/eindverslagen/982
#> 9  https://id.erfgoed.net/archeologie/eindverslagen/1721
#> 10 https://id.erfgoed.net/archeologie/eindverslagen/2498
#>                          geometry
#> 1  MULTIPOLYGON (((69886.01 21...
#> 2  MULTIPOLYGON (((198315.8 18...
#> 3  MULTIPOLYGON (((147152.3 19...
#> 4  MULTIPOLYGON (((133913.1 20...
#> 5  MULTIPOLYGON (((204529.3 18...
#> 6  MULTIPOLYGON (((182598.4 18...
#> 7  MULTIPOLYGON (((45726.54 17...
#> 8  MULTIPOLYGON (((50644.37 17...
#> 9  MULTIPOLYGON (((197263.4 16...
#> 10 MULTIPOLYGON (((71967.81 16...
```
