# Function to add a variable with broader concepts to a dataframe

\`broaden_concept()\` Given a dataset wich containing a column
containing Flanders Heritage concept URI's, this function will add a
column containing a nested data frame with the URI and label of this
concept and all broader concepts. The primary goal is to allow for easy
filtering on specific concepts by URI or Label while taking all narrower
labels into account as well. To do this, the dataset can either be
unnested using tidyr::unnest() or by using the filter_concept() function
of this package.

## Usage

``` r
broaden_concept(data, uri, new_var)
```

## Arguments

- data:

  a dataframe containing a variable with concept uri's.

- uri:

  the dataframe variable containing the uri of the concept for which
  broader concepts should be added.

- new_var:

  name of the new variable to be added to the dataframe

## Value

A dataframe with an added variable containing nested dataframes with
variables 'uri' and 'label'. The nested datasets include the original
concepts.

## Examples

``` r
if (FALSE) { # \dontrun{
broaden_concept(d, uri, broader_concepts)
} # }
```
