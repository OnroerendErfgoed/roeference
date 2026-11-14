# Get heritage objects (erfgoedobjecten)

\`get_oe_erfgoedobjecten()\` get an OGC Simple Features collection
containing the heritage objects of the Flemish Inventory of Immovable
Heritage (Inventaris Onroerend Erfgoed). The data is downloaded from
<https://geo.onroerenderfgoed.be/downloads>. The coordinate reference
system is EPSG:31370.

## Usage

``` r
get_oe_erfgoedobjecten(layer = "erfgoedobjecten")
```

## Arguments

- layer:

  Layer to be returned from the downloaded zip file. Default value is
  'erfgoedobjecten'. Other values are 'landschappelijk_gehelen',
  'landschappelijk_elementen', 'bouwkundig_elementen',
  'bouwkundig_gehelen', 'archeologie_elementen' and
  'archeologie_gehelen'.

## Value

An object of class sf (see
[st_read](https://r-spatial.github.io/sf/reference/st_read.html)). The
object has a comment containing the retrieval_time and retrieval_url.

## Examples

``` r
get_oe_erfgoedobjecten()
#> Simple feature collection with 92699 features and 13 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 22071.41 ymin: 153165.5 xmax: 258866.5 ymax: 243901.5
#> Projected CRS: BD72 / Belgian Lambert 72
#> First 10 features:
#>    ERFGOED_ID                                                 NAAM
#> 1       84307                                           Baljuwhuis
#> 2      135355 Landschap van de Oude Schelde tussen Bornem en Weert
#> 3      140018                     Historische stadskern van Deinze
#> 4       84356                         Hoeve met losse bestanddelen
#> 5       84580                                            Herenhuis
#> 6       13559                                          Dorpswoning
#> 7      300523                      Historische stadskern van Tielt
#> 8       58417                                    Villa The Haddock
#> 9      208266                                   Art-decoburgerhuis
#> 10      71077                Tabaks- en sigarettenfabriek De Jager
#>                                              URI
#> 1   https://id.erfgoed.net/erfgoedobjecten/84307
#> 2  https://id.erfgoed.net/erfgoedobjecten/135355
#> 3  https://id.erfgoed.net/erfgoedobjecten/140018
#> 4   https://id.erfgoed.net/erfgoedobjecten/84356
#> 5   https://id.erfgoed.net/erfgoedobjecten/84580
#> 6   https://id.erfgoed.net/erfgoedobjecten/13559
#> 7  https://id.erfgoed.net/erfgoedobjecten/300523
#> 8   https://id.erfgoed.net/erfgoedobjecten/58417
#> 9  https://id.erfgoed.net/erfgoedobjecten/208266
#> 10  https://id.erfgoed.net/erfgoedobjecten/71077
#>                                                              URL
#> 1   https://inventaris.onroerenderfgoed.be/erfgoedobjecten/84307
#> 2  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/135355
#> 3  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/140018
#> 4   https://inventaris.onroerenderfgoed.be/erfgoedobjecten/84356
#> 5   https://inventaris.onroerenderfgoed.be/erfgoedobjecten/84580
#> 6   https://inventaris.onroerenderfgoed.be/erfgoedobjecten/13559
#> 7  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/300523
#> 8   https://inventaris.onroerenderfgoed.be/erfgoedobjecten/58417
#> 9  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/208266
#> 10  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/71077
#>                              LOCATIE  OMVANG ARCHEO LANDSCH BOUWK NISCODES
#> 1       Baljuwstraat 7-8 (Dentergem) element  FALSE   FALSE  TRUE  {37002}
#> 2             Bornem, Weert (Bornem)  geheel  FALSE    TRUE FALSE  {12007}
#> 3                    Deinze (Deinze)  geheel   TRUE   FALSE FALSE  {44083}
#> 4   Meulebekesteenweg 92 (Dentergem) element  FALSE   FALSE  TRUE  {37002}
#> 5         Molenstraat 27 (Dentergem) element  FALSE   FALSE  TRUE  {37002}
#> 6           Kloosterstraat 4 (Malle) element  FALSE   FALSE  TRUE  {11057}
#> 7                      Tielt (Tielt)  geheel   TRUE   FALSE FALSE  {37022}
#> 8        Lommergang 2 (Knokke-Heist) element  FALSE   FALSE  TRUE  {31043}
#> 9  Bouwmeestersstraat 14 (Antwerpen) element  FALSE   FALSE  TRUE  {11002}
#> 10           Lagestraat 9 (Wevelgem) element  FALSE   FALSE  TRUE  {34041}
#>                             DATAVERANT   B_TOESTAND    ERF_WAARDE
#> 1   https://id.erfgoed.net/actoren/501      Bewaard      Aanwezig
#> 2   https://id.erfgoed.net/actoren/501      Bewaard      Aanwezig
#> 3   https://id.erfgoed.net/actoren/501      Bewaard      Aanwezig
#> 4   https://id.erfgoed.net/actoren/501      Bewaard      Aanwezig
#> 5   https://id.erfgoed.net/actoren/501      Bewaard      Aanwezig
#> 6   https://id.erfgoed.net/actoren/501 Niet bewaard Niet aanwezig
#> 7   https://id.erfgoed.net/actoren/501      Bewaard      Aanwezig
#> 8   https://id.erfgoed.net/actoren/501      Bewaard      Aanwezig
#> 9  https://id.erfgoed.net/actoren/1073      Bewaard      Aanwezig
#> 10  https://id.erfgoed.net/actoren/501      Bewaard      Aanwezig
#>                          geometry
#> 1  MULTIPOLYGON (((83415.98 18...
#> 2  MULTIPOLYGON (((137489.5 19...
#> 3  MULTIPOLYGON (((90585.06 18...
#> 4  MULTIPOLYGON (((82258.69 18...
#> 5  MULTIPOLYGON (((82003.86 18...
#> 6  MULTIPOLYGON (((175390.4 22...
#> 7  MULTIPOLYGON (((76144.03 18...
#> 8  MULTIPOLYGON (((72994.41 22...
#> 9  MULTIPOLYGON (((151940.6 21...
#> 10 MULTIPOLYGON (((66715.52 16...
get_oe_erfgoedobjecten(layer = 'landschappelijk_gehelen')
#> Simple feature collection with 374 features and 13 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 22071.41 ymin: 153222.1 xmax: 258866.5 ymax: 240438.5
#> Projected CRS: BD72 / Belgian Lambert 72
#> First 10 features:
#>    ERFGOED_ID                                                 NAAM
#> 1      135355 Landschap van de Oude Schelde tussen Bornem en Weert
#> 2      135359                                       Brechtse Heide
#> 3      308472                Moenebroek en dorpskom van Vloerzegem
#> 4      300251       Mijnsite Eisden, Mechelse Heide en Mechels Bos
#> 5      301287                                          Leiemeersen
#> 6      300293                                Krekengebied Assenede
#> 7      135037                       Vallei van de Kleine Kaliebeek
#> 8      135361                                    Domein De Renesse
#> 9      134080                             Torfbroek en Ter Bronnen
#> 10     135395                              De Heuvel van Bossenare
#>                                              URI
#> 1  https://id.erfgoed.net/erfgoedobjecten/135355
#> 2  https://id.erfgoed.net/erfgoedobjecten/135359
#> 3  https://id.erfgoed.net/erfgoedobjecten/308472
#> 4  https://id.erfgoed.net/erfgoedobjecten/300251
#> 5  https://id.erfgoed.net/erfgoedobjecten/301287
#> 6  https://id.erfgoed.net/erfgoedobjecten/300293
#> 7  https://id.erfgoed.net/erfgoedobjecten/135037
#> 8  https://id.erfgoed.net/erfgoedobjecten/135361
#> 9  https://id.erfgoed.net/erfgoedobjecten/134080
#> 10 https://id.erfgoed.net/erfgoedobjecten/135395
#>                                                              URL
#> 1  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/135355
#> 2  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/135359
#> 3  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/308472
#> 4  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/300251
#> 5  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/301287
#> 6  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/300293
#> 7  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/135037
#> 8  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/135361
#> 9  https://inventaris.onroerenderfgoed.be/erfgoedobjecten/134080
#> 10 https://inventaris.onroerenderfgoed.be/erfgoedobjecten/135395
#>                                                                                                                                                                                           LOCATIE
#> 1                                                                                                                                                                          Bornem, Weert (Bornem)
#> 2                                                                                                       Brecht, Sint-Job-in-'t Goor, Sint-Lenaarts (Brecht), Westmalle (Malle), Schilde (Schilde)
#> 3                                                                                                               Geraardsbergen, Ophasselt, Schendelbeke (Geraardsbergen), Hemelveerdegem (Lierde)
#> 4                                                                                              Niel-bij-As (As), Lanklaar (Dilsen-Stokkem), Mechelen-aan-de-Maas, Opgrimbie, Vucht (Maasmechelen)
#> 5                                                                                                                                                         Sint-Martens-Latem (Sint-Martens-Latem)
#> 6                                                                                                                                                                             Assenede (Assenede)
#> 7                                                                                                                                              Lichtaart, Tielen (Kasterlee), Turnhout (Turnhout)
#> 8                                                                                                                                                                               Oostmalle (Malle)
#> 9  Ahornbomenlaan, Eekhoornlaan, Egellaan, Fazantendal, Glimwormlaan, Kasteellaan, Lentelaan, Meerlaan, Neerstraat, Patrijzenlaan, Ter Bronnenlaan, Van Bellinghenlaan, Visserijlaan (Kampenhout)
#> 10                                                                                                                                                   Etikhove, Maarke-Kerkem, Nukerke (Maarkedal)
#>    OMVANG ARCHEO LANDSCH BOUWK                        NISCODES
#> 1  geheel  FALSE    TRUE FALSE                         {12007}
#> 2  geheel  FALSE    TRUE FALSE             {11009,11039,11057}
#> 3  geheel  FALSE    TRUE FALSE                   {41018,45063}
#> 4  geheel  FALSE    TRUE FALSE {71002,71016,71067,72041,73107}
#> 5  geheel  FALSE    TRUE FALSE                         {44064}
#> 6  geheel  FALSE    TRUE FALSE                         {43002}
#> 7  geheel  FALSE    TRUE FALSE                   {13017,13040}
#> 8  geheel  FALSE    TRUE FALSE                         {11057}
#> 9  geheel  FALSE    TRUE FALSE                         {23038}
#> 10 geheel  FALSE    TRUE FALSE                         {45064}
#>                            DATAVERANT B_TOESTAND ERF_WAARDE
#> 1  https://id.erfgoed.net/actoren/501    Bewaard   Aanwezig
#> 2  https://id.erfgoed.net/actoren/501    Bewaard   Aanwezig
#> 3  https://id.erfgoed.net/actoren/501    Bewaard   Aanwezig
#> 4  https://id.erfgoed.net/actoren/501    Bewaard   Aanwezig
#> 5  https://id.erfgoed.net/actoren/501    Bewaard   Aanwezig
#> 6  https://id.erfgoed.net/actoren/501    Bewaard   Aanwezig
#> 7  https://id.erfgoed.net/actoren/501    Bewaard   Aanwezig
#> 8  https://id.erfgoed.net/actoren/501    Bewaard   Aanwezig
#> 9  https://id.erfgoed.net/actoren/501    Bewaard   Aanwezig
#> 10 https://id.erfgoed.net/actoren/501    Bewaard   Aanwezig
#>                          geometry
#> 1  MULTIPOLYGON (((137489.5 19...
#> 2  MULTIPOLYGON (((164972.2 22...
#> 3  MULTIPOLYGON (((115130.3 16...
#> 4  MULTIPOLYGON (((236039 1886...
#> 5  MULTIPOLYGON (((98788.68 19...
#> 6  MULTIPOLYGON (((105458.3 21...
#> 7  MULTIPOLYGON (((187940.2 21...
#> 8  MULTIPOLYGON (((174392.7 22...
#> 9  MULTIPOLYGON (((161687.6 17...
#> 10 MULTIPOLYGON (((97348.62 16...
```
