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

  - aanduidingsobjecten_historiek Designation objects, including
    designations that are no longer valid.

  - bes_arch_site Protected archaeological sites / Beschermde
    archeologische sites

  - bes_landschap Protected Landscape / Beschermd cultuurhistorische
    landschappen

  - bes_monument Protected Monument / Beschermd monumenten

  - bes_overgangszone Transitional zone' / Overganszones

  - bes_sd_gezicht Protected cityscape, / Beschermde stads- of
    dorpsgezichten

  - erfgoedls Heritage landscape / Erfgoedlandschap

  - gga Area where no archaeology is to be expected / Gebieden waar geen
    archeologie te verwachten valt

  - unesco_kern UNESCO World Heritage site - core area / UNESCO
    werelderfgoed - kernzones

  - unesco_buffer UNESCO World Heritage site - buffer area / UNESCO
    werelderfgoed - bufferzones

  - vast_az Archaeological zone / Vastgestelde archeologische zone

  - vast_be Architectural heritage / Vastgesteld bouwkundig erfgoed

  - vast_la Landscape atlas / Vastgestelde landschapsatlas

  - vast_le Landscape elements / Vastgestelde landschapselementen

## Value

An object of class sf (see
[st_read](https://r-spatial.github.io/sf/reference/st_read.html)). The
object has a comment containing the retrieval_time and retrieval_url.

## Examples

``` r
get_oe_aanduidingsobjecten()
#> Error in req_perform(req_cache(req_retry(req_url_path_append(req_url_path_append(request("https://geo.onroerenderfgoed.be"),     "downloads"), zip_name), max_tries = 5), tempdir()), path = zip_path): Failed to perform HTTP request.
#> Caused by error in `curl::curl_fetch_disk()`:
#> ! Timeout was reached [geo.onroerenderfgoed.be]:
#> Resolving timed out after 10002 milliseconds
get_oe_aanduidingsobjecten('vast_la')
#> Error in req_perform(req_cache(req_retry(req_url_path_append(req_url_path_append(request("https://geo.onroerenderfgoed.be"),     "downloads"), zip_name), max_tries = 5), tempdir()), path = zip_path): Failed to perform HTTP request.
#> Caused by error in `curl::curl_fetch_disk()`:
#> ! Timeout was reached [geo.onroerenderfgoed.be]:
#> Resolving timed out after 10002 milliseconds
get_oe_aanduidingsobjecten(layer = 'vast_la')
#> Simple feature collection with 86 features and 12 fields
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 22072.08 ymin: 153217 xmax: 258871.8 ymax: 234277.5
#> Projected CRS: BD72 / Belgian Lambert 72
#> First 10 features:
#>    AANDUID_ID
#> 1       10312
#> 2       10329
#> 3       10314
#> 4       10274
#> 5       10324
#> 6       10381
#> 7       10290
#> 8       10279
#> 9       10269
#> 10      10416
#>                                                                                     NAAM
#> 1                                                          Vallei van de Gulp bij Teuven
#> 2                        Steilrand van het Kempisch Plateau van de Kikbeek tot de Asbeek
#> 3                                    Omgeving van het Iers Kruis op de Keiberg te Lafelt
#> 4                                                       's Herenbos, Heihuizen en Zalfen
#> 5  Valleien van Dommel en Bollisserbeek tussen Peer, Hechtel-Eksel, Overpelt en Neerpelt
#> 6                          Vallei van de Munkbosbeek met het kasteeldomein van Beerlegem
#> 7                                    Dal van de Kleine Nete tussen Nijlen en Grobbendonk
#> 8                                                                       Groot Schietveld
#> 9                                                                         Brechtse Heide
#> 10                                                                   Slagveld Passendale
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
#> 1                                                                                                                                                         Remersdaal, Teuven (Voeren)
#> 2                                                                                                                                  Lanaken, Rekem (Lanaken), Opgrimbie (Maasmechelen)
#> 3                                                                                                                                                                 Vlijtingen (Riemst)
#> 4                                                                                                                                                Oostmalle (Malle), Zoersel (Zoersel)
#> 5                                                                                                                       Eksel (Hechtel-Eksel), Peer (Peer), Neerpelt, Overpelt (Pelt)
#> 6  Dikkelvenne (Gavere), Balegem, Scheldewindeke (Oosterzele), Velzeke-Ruddershove (Zottegem), Beerlegem, Dikkele, Meilegem, Nederzwalm-Hermelgem, Paulatem, Sint-Maria-Latem (Zwalm)
#> 7                                                                                                              Grobbendonk (Grobbendonk), Nijlen (Nijlen), Pulle, Viersel (Zandhoven)
#> 8                                                                                                         Brasschaat (Brasschaat), Brecht (Brecht), Loenhout, Wuustwezel (Wuustwezel)
#> 9                                                                                           Brecht, Sint-Job-in-'t Goor, Sint-Lenaarts (Brecht), Westmalle (Malle), Schilde (Schilde)
#> 10                                                                                                                                                  Passendale, Zonnebeke (Zonnebeke)
#>    GELD_START GELD_EINDE
#> 1  2008-12-24       <NA>
#> 2  2014-02-12       <NA>
#> 3  2008-12-24       <NA>
#> 4  2010-01-27       <NA>
#> 5  2013-12-05       <NA>
#> 6  2008-07-25       <NA>
#> 7  2015-01-27       <NA>
#> 8  2011-02-09       <NA>
#> 9  2008-12-24       <NA>
#> 10 2015-04-23       <NA>
#>                                                                 URL
#> 1  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10312
#> 2  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10329
#> 3  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10314
#> 4  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10274
#> 5  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10324
#> 6  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10381
#> 7  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10290
#> 8  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10279
#> 9  https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10269
#> 10 https://inventaris.onroerenderfgoed.be/aanduidingsobjecten/10416
#>                                                 URI                  NISCODES
#> 1  https://id.erfgoed.net/aanduidingsobjecten/10312                   {73109}
#> 2  https://id.erfgoed.net/aanduidingsobjecten/10329       {71067,73042,73107}
#> 3  https://id.erfgoed.net/aanduidingsobjecten/10314       {73042,73066,73110}
#> 4  https://id.erfgoed.net/aanduidingsobjecten/10274       {11055,11057,13004}
#> 5  https://id.erfgoed.net/aanduidingsobjecten/10324       {72030,72038,72043}
#> 6  https://id.erfgoed.net/aanduidingsobjecten/10381 {41081,44020,44052,45065}
#> 7  https://id.erfgoed.net/aanduidingsobjecten/10290 {11035,11054,12026,13010}
#> 8  https://id.erfgoed.net/aanduidingsobjecten/10279       {11008,11009,11053}
#> 9  https://id.erfgoed.net/aanduidingsobjecten/10269       {11009,11039,11057}
#> 10 https://id.erfgoed.net/aanduidingsobjecten/10416                   {33037}
#>                            DATAVERANT                       geometry
#> 1  https://id.erfgoed.net/actoren/501 POLYGON ((255812.5 161901.3...
#> 2  https://id.erfgoed.net/actoren/501 POLYGON ((237040.8 180314, ...
#> 3  https://id.erfgoed.net/actoren/501 POLYGON ((234431.8 167880.8...
#> 4  https://id.erfgoed.net/actoren/501 POLYGON ((174471.3 218918.2...
#> 5  https://id.erfgoed.net/actoren/501 POLYGON ((221731.4 203634.2...
#> 6  https://id.erfgoed.net/actoren/501 POLYGON ((102573.5 176208.9...
#> 7  https://id.erfgoed.net/actoren/501 POLYGON ((168417.3 207760.2...
#> 8  https://id.erfgoed.net/actoren/501 POLYGON ((161569.9 225087.5...
#> 9  https://id.erfgoed.net/actoren/501 POLYGON ((164694.6 222126.4...
#> 10 https://id.erfgoed.net/actoren/501 POLYGON ((52226.6 176534, 5...
```
