# Get Flanders Heritage Inventory designation objects (aanduidingsobjecten)

\`get_oe_aanduidingsobjecten()\` get an OGC Simple Features collection
containing the designated heritage sites (protected sites and
inventorised immovable heritage). The data is downloaded from
<https://geo.onroerenderfgoed.be/downloads>. The coordinate reference
system is EPSG:31370.

## Usage

``` r
get_oe_aanduidingsobjecten(layer = "aanduidingsobjecten")
```

## Arguments

- layer:

  layer to be returned from the downloaded zip file. Default value is
  'aanduidingsobjecten', containing all types of designation objects.
  Other values are:

  aanduidingsobjecten_historiek

  :   Designation objects, including designations that are no longer
      valid.

  bes_arch_site

  :   Protected archaeological sites / Beschermde archeologische sites

  bes_landschap

  :   Protected Landscape / Beschermd cultuurhistorische landschappen

  bes_monument

  :   Protected Monument / Beschermd monumenten

  bes_overgangszone

  :   Transitional zone' / Overganszones

  bes_sd_gezicht

  :   Protected cityscape, / Beschermde stads- of dorpsgezichten

  erfgoedls

  :   Heritage landscape / Erfgoedlandschap

  gga

  :   Area where no archaeology is to be expected / Gebieden waar geen
      archeologie te verwachten valt

  unesco_kern

  :   UNESCO World Heritage site - core area / UNESCO werelderfgoed -
      kernzones

  unesco_buffer

  :   UNESCO World Heritage site - buffer area / UNESCO werelderfgoed -
      bufferzones

  vast_az

  :   Archaeological zone / Vastgestelde archeologische zone

  vast_be

  :   Architectural heritage / Vastgesteld bouwkundig erfgoed

  vast_la

  :   Landscape atlas / Vastgestelde landschapsatlas

  vast_le

  :   Landscape elements / Vastgestelde landschapselementen

## Value

An object of class sf (see
[st_read](https://r-spatial.github.io/sf/reference/st_read.html)). The
object has a comment containing the retrieval_time and retrieval_url.

## Examples

``` r
get_oe_aanduidingsobjecten()
#> Simple feature collection with 102906 features and 12 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 22072.08 ymin: 153082.1 xmax: 258871.8 ymax: 243901.5
#> Projected CRS: BD72 / Belgian Lambert 72
#> First 10 features:
#>    AANDUID_ID                                             NAAM ALT_NAAM
#> 1      125200                                      Gebied 4415     <NA>
#> 2        8289                Café ontworpen door Alexis Sterck     <NA>
#> 3      140491                                    Duitse bunker     <NA>
#> 4        1750 Kasteel de Neufcour van Eizeringen met wagenhuis     <NA>
#> 5        4692                                    Wevershuisjes     <NA>
#> 6       13090                     Brouwerswoning met interieur     <NA>
#> 7      113417                                   Gemeenteschool     <NA>
#> 8       10724                 Parochiekerk Sint-Andreas: toren     <NA>
#> 9      145849                               Stadskern Zottegem     <NA>
#> 10       5225                                  Bunker type 57a     <NA>
#>                                               TYPE_URI
#> 1  https://id.erfgoed.net/thesauri/aanduidingstypes/21
#> 2   https://id.erfgoed.net/thesauri/aanduidingstypes/1
#> 3   https://id.erfgoed.net/thesauri/aanduidingstypes/9
#> 4   https://id.erfgoed.net/thesauri/aanduidingstypes/1
#> 5   https://id.erfgoed.net/thesauri/aanduidingstypes/1
#> 6   https://id.erfgoed.net/thesauri/aanduidingstypes/1
#> 7   https://id.erfgoed.net/thesauri/aanduidingstypes/1
#> 8   https://id.erfgoed.net/thesauri/aanduidingstypes/1
#> 9   https://id.erfgoed.net/thesauri/aanduidingstypes/9
#> 10  https://id.erfgoed.net/thesauri/aanduidingstypes/1
#>                               TYPE_NAAM
#> 1  gebied geen archeologie, gewestelijk
#> 2                    beschermd monument
#> 3        vastgesteld bouwkundig erfgoed
#> 4                    beschermd monument
#> 5                    beschermd monument
#> 6                    beschermd monument
#> 7                    beschermd monument
#> 8                    beschermd monument
#> 9        vastgesteld bouwkundig erfgoed
#> 10                   beschermd monument
#>                                                                                                                                                                                                                                                          LOCATIE
#> 1                                                                                                                                                                                                                                              Lanaken (Limburg)
#> 2                                                                                                                                                                                                                     Grote Markt 37, Kerkstraat 3 (Dendermonde)
#> 3                                                                                                                                                                                                                                  Brielmolenstraat 65 (Lokeren)
#> 4                                                                                                                                                                                                                     Luitenant Jacopsstraat 25A-39, 27 (Lennik)
#> 5                                                                                                                                                                                                                       Molenstraat 89B, 91-93, 97-99 (Turnhout)
#> 6                                                                                                                                                                                                                                       Budastraat 25 (Kortrijk)
#> 7                                                                                                                                                                                                                                        Schoolstraat 12 (Zwalm)
#> 8                                                                                                                                                                                                                                     Beerlegemsebaan 53 (Zwalm)
#> 9  Arthur Scheirisstraat, Beggaardweg, Bruggenhoek, Désiré Van Den Bosschestraat, Elenestraat, Firmin Bogaertstraat, Graaf van Egmontstraat, Gustaaf Schockaertstraat, Heldenlaan, Hoogstraat, Hospitaalstraat, Kasteelpad, Kasteelstraat, Kazernstraat, Laurens
#> 10                                                                                                                                                                                                                                        Acacialaan (Antwerpen)
#>    GELD_START GELD_EINDE
#> 1  2019-11-25       <NA>
#> 2  2004-01-05       <NA>
#> 3  2023-06-20       <NA>
#> 4  1993-09-06       <NA>
#> 5  1992-06-10       <NA>
#> 6  1983-03-09       <NA>
#> 7  2018-10-04       <NA>
#> 8  1943-11-04       <NA>
#> 9  2023-06-20       <NA>
#> 10 2004-06-11       <NA>
#>                                                                  URL
#> 1  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/125200
#> 2    https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/8289
#> 3  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/140491
#> 4    https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/1750
#> 5    https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/4692
#> 6   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/13090
#> 7  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/113417
#> 8   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10724
#> 9  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/145849
#> 10   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/5225
#>                                                  URI NISCODES
#> 1  https://id.erfgoed.net/aanduidingsobjecten/125200  {73042}
#> 2    https://id.erfgoed.net/aanduidingsobjecten/8289  {42006}
#> 3  https://id.erfgoed.net/aanduidingsobjecten/140491  {46029}
#> 4    https://id.erfgoed.net/aanduidingsobjecten/1750  {23104}
#> 5    https://id.erfgoed.net/aanduidingsobjecten/4692  {13040}
#> 6   https://id.erfgoed.net/aanduidingsobjecten/13090  {34022}
#> 7  https://id.erfgoed.net/aanduidingsobjecten/113417  {45065}
#> 8   https://id.erfgoed.net/aanduidingsobjecten/10724  {45065}
#> 9  https://id.erfgoed.net/aanduidingsobjecten/145849  {41081}
#> 10   https://id.erfgoed.net/aanduidingsobjecten/5225  {11002}
#>                            DATAVERANT                       geometry
#> 1  https://id.erfgoed.net/actoren/501 MULTIPOLYGON (((243043.7 17...
#> 2  https://id.erfgoed.net/actoren/501 MULTIPOLYGON (((131038.8 19...
#> 3  https://id.erfgoed.net/actoren/501 MULTIPOLYGON (((120205.5 20...
#> 4  https://id.erfgoed.net/actoren/501 MULTIPOLYGON (((133778.9 16...
#> 5  https://id.erfgoed.net/actoren/501 MULTIPOLYGON (((189703.2 22...
#> 6  https://id.erfgoed.net/actoren/501 MULTIPOLYGON (((72080.14 16...
#> 7  https://id.erfgoed.net/actoren/501 MULTIPOLYGON (((101980.9 17...
#> 8  https://id.erfgoed.net/actoren/501 MULTIPOLYGON (((104112.7 17...
#> 9  https://id.erfgoed.net/actoren/501 MULTIPOLYGON (((110502.9 17...
#> 10 https://id.erfgoed.net/actoren/501 MULTIPOLYGON (((152213 2080...
get_oe_aanduidingsobjecten('vast_la')
#> Simple feature collection with 86 features and 12 fields
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 22072.08 ymin: 153217 xmax: 258871.8 ymax: 234277.5
#> Projected CRS: BD72 / Belgian Lambert 72
#> First 10 features:
#>    AANDUID_ID
#> 1       10453
#> 2       10312
#> 3      127717
#> 4       10329
#> 5       10314
#> 6       10274
#> 7       10324
#> 8       10381
#> 9       10290
#> 10      10279
#>                                                                                     NAAM
#> 1         Ieperse vestingen en omgeving, bossen ten zuiden en heuvelrug Wijtschate-Mesen
#> 2                                                          Vallei van de Gulp bij Teuven
#> 3                                    Bellebroek en Dendermeersen tussen Oudegem en Wieze
#> 4                        Steilrand van het Kempisch Plateau van de Kikbeek tot de Asbeek
#> 5                                    Omgeving van het Iers Kruis op de Keiberg te Lafelt
#> 6                                                       's Herenbos, Heihuizen en Zalfen
#> 7  Valleien van Dommel en Bollisserbeek tussen Peer, Hechtel-Eksel, Overpelt en Neerpelt
#> 8                          Vallei van de Munkbosbeek met het kasteeldomein van Beerlegem
#> 9                                    Dal van de Kleine Nete tussen Nijlen en Grobbendonk
#> 10                                                                      Groot Schietveld
#>    ALT_NAAM                                            TYPE_URI
#> 1      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 2      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 3      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 4      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 5      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 6      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 7      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 8      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 9      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 10     <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#>                                   TYPE_NAAM
#> 1  vastgesteld gebied in de landschapsatlas
#> 2  vastgesteld gebied in de landschapsatlas
#> 3  vastgesteld gebied in de landschapsatlas
#> 4  vastgesteld gebied in de landschapsatlas
#> 5  vastgesteld gebied in de landschapsatlas
#> 6  vastgesteld gebied in de landschapsatlas
#> 7  vastgesteld gebied in de landschapsatlas
#> 8  vastgesteld gebied in de landschapsatlas
#> 9  vastgesteld gebied in de landschapsatlas
#> 10 vastgesteld gebied in de landschapsatlas
#>                                                                                                                                                                               LOCATIE
#> 1                                                  Kemmel, Wijtschate, Wulvergem (Heuvelland), Hollebeke, Ieper, Voormezele, Zillebeke (Ieper), Mesen (Mesen), Zandvoorde (Zonnebeke)
#> 2                                                                                                                                                         Remersdaal, Teuven (Voeren)
#> 3                                                            Gijzegem, Herdersem (Aalst), Mespelare, Oudegem, Sint-Gillis-bij-Dendermonde (Dendermonde), Denderbelle, Wieze (Lebbeke)
#> 4                                                                                                                                  Lanaken, Rekem (Lanaken), Opgrimbie (Maasmechelen)
#> 5                                                                                                                                                                 Vlijtingen (Riemst)
#> 6                                                                                                                                                Oostmalle (Malle), Zoersel (Zoersel)
#> 7                                                                                                                       Eksel (Hechtel-Eksel), Peer (Peer), Neerpelt, Overpelt (Pelt)
#> 8  Dikkelvenne (Gavere), Balegem, Scheldewindeke (Oosterzele), Velzeke-Ruddershove (Zottegem), Beerlegem, Dikkele, Meilegem, Nederzwalm-Hermelgem, Paulatem, Sint-Maria-Latem (Zwalm)
#> 9                                                                                                              Grobbendonk (Grobbendonk), Nijlen (Nijlen), Pulle, Viersel (Zandhoven)
#> 10                                                                                                        Brasschaat (Brasschaat), Brecht (Brecht), Loenhout, Wuustwezel (Wuustwezel)
#>    GELD_START GELD_EINDE
#> 1  2013-07-04       <NA>
#> 2  2008-12-24       <NA>
#> 3  2021-07-19       <NA>
#> 4  2014-02-12       <NA>
#> 5  2008-12-24       <NA>
#> 6  2010-01-27       <NA>
#> 7  2013-12-05       <NA>
#> 8  2008-07-25       <NA>
#> 9  2015-01-27       <NA>
#> 10 2011-02-09       <NA>
#>                                                                  URL
#> 1   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10453
#> 2   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10312
#> 3  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/127717
#> 4   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10329
#> 5   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10314
#> 6   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10274
#> 7   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10324
#> 8   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10381
#> 9   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10290
#> 10  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10279
#>                                                  URI                  NISCODES
#> 1   https://id.erfgoed.net/aanduidingsobjecten/10453 {33011,33016,33037,33039}
#> 2   https://id.erfgoed.net/aanduidingsobjecten/10312                   {73109}
#> 3  https://id.erfgoed.net/aanduidingsobjecten/127717       {41002,42006,42011}
#> 4   https://id.erfgoed.net/aanduidingsobjecten/10329       {71067,73042,73107}
#> 5   https://id.erfgoed.net/aanduidingsobjecten/10314       {73042,73066,73110}
#> 6   https://id.erfgoed.net/aanduidingsobjecten/10274       {11055,11057,13004}
#> 7   https://id.erfgoed.net/aanduidingsobjecten/10324       {72030,72038,72043}
#> 8   https://id.erfgoed.net/aanduidingsobjecten/10381 {41081,44020,44052,45065}
#> 9   https://id.erfgoed.net/aanduidingsobjecten/10290 {11035,11054,12026,13010}
#> 10  https://id.erfgoed.net/aanduidingsobjecten/10279       {11008,11009,11053}
#>                            DATAVERANT                       geometry
#> 1  https://id.erfgoed.net/actoren/501 POLYGON ((45596.3 163800.1,...
#> 2  https://id.erfgoed.net/actoren/501 POLYGON ((255812.5 161901.3...
#> 3  https://id.erfgoed.net/actoren/501 POLYGON ((128324.3 186656.6...
#> 4  https://id.erfgoed.net/actoren/501 POLYGON ((237040.8 180314, ...
#> 5  https://id.erfgoed.net/actoren/501 POLYGON ((234431.8 167880.8...
#> 6  https://id.erfgoed.net/actoren/501 POLYGON ((174471.3 218918.2...
#> 7  https://id.erfgoed.net/actoren/501 POLYGON ((221731.4 203634.2...
#> 8  https://id.erfgoed.net/actoren/501 POLYGON ((102573.5 176208.9...
#> 9  https://id.erfgoed.net/actoren/501 POLYGON ((168417.3 207760.2...
#> 10 https://id.erfgoed.net/actoren/501 POLYGON ((161569.9 225087.5...
get_oe_aanduidingsobjecten(layer = 'vast_la')
#> Simple feature collection with 86 features and 12 fields
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 22072.08 ymin: 153217 xmax: 258871.8 ymax: 234277.5
#> Projected CRS: BD72 / Belgian Lambert 72
#> First 10 features:
#>    AANDUID_ID
#> 1       10453
#> 2       10312
#> 3      127717
#> 4       10329
#> 5       10314
#> 6       10274
#> 7       10324
#> 8       10381
#> 9       10290
#> 10      10279
#>                                                                                     NAAM
#> 1         Ieperse vestingen en omgeving, bossen ten zuiden en heuvelrug Wijtschate-Mesen
#> 2                                                          Vallei van de Gulp bij Teuven
#> 3                                    Bellebroek en Dendermeersen tussen Oudegem en Wieze
#> 4                        Steilrand van het Kempisch Plateau van de Kikbeek tot de Asbeek
#> 5                                    Omgeving van het Iers Kruis op de Keiberg te Lafelt
#> 6                                                       's Herenbos, Heihuizen en Zalfen
#> 7  Valleien van Dommel en Bollisserbeek tussen Peer, Hechtel-Eksel, Overpelt en Neerpelt
#> 8                          Vallei van de Munkbosbeek met het kasteeldomein van Beerlegem
#> 9                                    Dal van de Kleine Nete tussen Nijlen en Grobbendonk
#> 10                                                                      Groot Schietveld
#>    ALT_NAAM                                            TYPE_URI
#> 1      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 2      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 3      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 4      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 5      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 6      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 7      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 8      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 9      <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#> 10     <NA> https://id.erfgoed.net/thesauri/aanduidingstypes/10
#>                                   TYPE_NAAM
#> 1  vastgesteld gebied in de landschapsatlas
#> 2  vastgesteld gebied in de landschapsatlas
#> 3  vastgesteld gebied in de landschapsatlas
#> 4  vastgesteld gebied in de landschapsatlas
#> 5  vastgesteld gebied in de landschapsatlas
#> 6  vastgesteld gebied in de landschapsatlas
#> 7  vastgesteld gebied in de landschapsatlas
#> 8  vastgesteld gebied in de landschapsatlas
#> 9  vastgesteld gebied in de landschapsatlas
#> 10 vastgesteld gebied in de landschapsatlas
#>                                                                                                                                                                               LOCATIE
#> 1                                                  Kemmel, Wijtschate, Wulvergem (Heuvelland), Hollebeke, Ieper, Voormezele, Zillebeke (Ieper), Mesen (Mesen), Zandvoorde (Zonnebeke)
#> 2                                                                                                                                                         Remersdaal, Teuven (Voeren)
#> 3                                                            Gijzegem, Herdersem (Aalst), Mespelare, Oudegem, Sint-Gillis-bij-Dendermonde (Dendermonde), Denderbelle, Wieze (Lebbeke)
#> 4                                                                                                                                  Lanaken, Rekem (Lanaken), Opgrimbie (Maasmechelen)
#> 5                                                                                                                                                                 Vlijtingen (Riemst)
#> 6                                                                                                                                                Oostmalle (Malle), Zoersel (Zoersel)
#> 7                                                                                                                       Eksel (Hechtel-Eksel), Peer (Peer), Neerpelt, Overpelt (Pelt)
#> 8  Dikkelvenne (Gavere), Balegem, Scheldewindeke (Oosterzele), Velzeke-Ruddershove (Zottegem), Beerlegem, Dikkele, Meilegem, Nederzwalm-Hermelgem, Paulatem, Sint-Maria-Latem (Zwalm)
#> 9                                                                                                              Grobbendonk (Grobbendonk), Nijlen (Nijlen), Pulle, Viersel (Zandhoven)
#> 10                                                                                                        Brasschaat (Brasschaat), Brecht (Brecht), Loenhout, Wuustwezel (Wuustwezel)
#>    GELD_START GELD_EINDE
#> 1  2013-07-04       <NA>
#> 2  2008-12-24       <NA>
#> 3  2021-07-19       <NA>
#> 4  2014-02-12       <NA>
#> 5  2008-12-24       <NA>
#> 6  2010-01-27       <NA>
#> 7  2013-12-05       <NA>
#> 8  2008-07-25       <NA>
#> 9  2015-01-27       <NA>
#> 10 2011-02-09       <NA>
#>                                                                  URL
#> 1   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10453
#> 2   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10312
#> 3  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/127717
#> 4   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10329
#> 5   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10314
#> 6   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10274
#> 7   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10324
#> 8   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10381
#> 9   https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10290
#> 10  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10279
#>                                                  URI                  NISCODES
#> 1   https://id.erfgoed.net/aanduidingsobjecten/10453 {33011,33016,33037,33039}
#> 2   https://id.erfgoed.net/aanduidingsobjecten/10312                   {73109}
#> 3  https://id.erfgoed.net/aanduidingsobjecten/127717       {41002,42006,42011}
#> 4   https://id.erfgoed.net/aanduidingsobjecten/10329       {71067,73042,73107}
#> 5   https://id.erfgoed.net/aanduidingsobjecten/10314       {73042,73066,73110}
#> 6   https://id.erfgoed.net/aanduidingsobjecten/10274       {11055,11057,13004}
#> 7   https://id.erfgoed.net/aanduidingsobjecten/10324       {72030,72038,72043}
#> 8   https://id.erfgoed.net/aanduidingsobjecten/10381 {41081,44020,44052,45065}
#> 9   https://id.erfgoed.net/aanduidingsobjecten/10290 {11035,11054,12026,13010}
#> 10  https://id.erfgoed.net/aanduidingsobjecten/10279       {11008,11009,11053}
#>                            DATAVERANT                       geometry
#> 1  https://id.erfgoed.net/actoren/501 POLYGON ((45596.3 163800.1,...
#> 2  https://id.erfgoed.net/actoren/501 POLYGON ((255812.5 161901.3...
#> 3  https://id.erfgoed.net/actoren/501 POLYGON ((128324.3 186656.6...
#> 4  https://id.erfgoed.net/actoren/501 POLYGON ((237040.8 180314, ...
#> 5  https://id.erfgoed.net/actoren/501 POLYGON ((234431.8 167880.8...
#> 6  https://id.erfgoed.net/actoren/501 POLYGON ((174471.3 218918.2...
#> 7  https://id.erfgoed.net/actoren/501 POLYGON ((221731.4 203634.2...
#> 8  https://id.erfgoed.net/actoren/501 POLYGON ((102573.5 176208.9...
#> 9  https://id.erfgoed.net/actoren/501 POLYGON ((168417.3 207760.2...
#> 10 https://id.erfgoed.net/actoren/501 POLYGON ((161569.9 225087.5...
```
