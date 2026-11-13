# Function to get all broader concepts of a specific concept uri

\`get_broader_concepts()\` get a dataset containing the broader concepts
of a specific concept by uri.

## Usage

``` r
get_broader_concepts(uri)
```

## Arguments

- uri:

  a character string containg the uri of a concept

## Value

A dataframe with two variables (uri, label), containing the uri's and
labels of the input concept and all broader concepts.

## Examples

``` r
if (FALSE) { # \dontrun{
get_broader_concepts("https://id.erfgoed.net/thesauri/dateringen/1196")
} # }
```
