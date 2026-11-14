# Function to filter a dataset based with nested concepts on concept label

\`filter_concept()\` Filter a dataset on a column with concepts as
nested dataframes. The nested dataframes must contain a 'label' variable
and a 'uri' variable. This is the format returned by the
broaden_concepts function.

## Usage

``` r
filter_concept(data, var, concept)
```

## Arguments

- data:

  a dataframe containing a variable with concept uri's.

- var:

  the dataframe variable containing the nested data frames

- concept:

  a string representing the uri or label of the concept that should be
  used to filter the dataset. The filter function will return all rows
  with an exact match for this label or URI in the nested dataset.

## Value

A filtered data frame

## Examples

``` r
if (FALSE) { # \dontrun{
filter(d, concepts, "ijzertijd")
filter(d, concepts, "https://id.erfgoed.net/thesauri/dateringen/1293")
} # }
```
