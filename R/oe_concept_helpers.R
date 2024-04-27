#' Function to get the direct broader concept of a specific concept uri
#'
#' `get_concept()` get the parsed json body returned from resolving the
#'  concept uri.
#'
#' @param uri a character string containg the uri of a concept
#'
#' @returns An object representing the parsed json body of the concept.
#'
#' @examples
#' get_concept('https://id.erfgoed.net/thesauri/dateringen/1196')
get_concept <- function (uri) {
    broader_concept <- request(uri) |>
      req_headers(Accept = 'application/json') |>
      req_cache(tempdir()) |>
      req_throttle(60 / 60) |>
      req_perform() |>
      resp_body_json()
}

#' Function to get the direct broader concept of a specific concept uri
#'
#' `get_broader_concepts()` get a dataset containing the direct broader concepts
#' of a specific concept by uri.
#'
#' @param uri a character string containg the uri of a concept
#'
#' @returns An object representing the parsed json body of the broader concept.
#'
#' @examples
#' get_broader_concept('https://id.erfgoed.net/thesauri/dateringen/1196')
get_broader_concept <- function(concept) {
  if ('broader' %in% names(concept) && length(concept$broader) != 0) {
      broader_concept_uri <- concept$broader[[1]]$uri
      broader_concept <- get_concept(broader_concept_uri)
      return(broader_concept)
  } else {
      return(NULL)
  }
}

#' Function to get all broader concepts of a specific concept uri
#'
#' `get_broader_concepts()` get a dataset containing the broader concepts of
#' a specific concept by uri.
#'
#' @param uri a character string containg the uri of a concept
#'
#' @returns A dataframe with two variables (uri, label), containing the
#'  uri's and labels of the input concept and all broader concepts.
#'
#' @examples
#' get_broader_concepts('https://id.erfgoed.net/thesauri/dateringen/1196')
get_broader_concepts <- function (uri) {
  concept <- get_concept(uri)
  concepts <- data.frame(uri = concept$uri,
                         label = concept$label)
  while (!is.null(concept)) {
      concept <- get_broader_concept(concept)
      concepts <- rbind(concepts,
                        data.frame(
                            uri = concept$uri,
                            label = concept$label)
                        )
  }
  return(concepts)
}

#' Function to add a variable with broader concepts to a dataframe
#'
#' `broaden_concept()` Filter a dataset on a column with concepts as nested
#'   dataframes. The nested dataframes must contain a 'label' variable and a
#'   'uri' variable. This is the format returned by the broaden_concepts
#'   function.
#'
#' @param data a dataframe containing a variable with concept uri's.
#'
#' @param uri the dataframe variable containing the uri of the concept for
#'  which broader concepts should be added.
#'
#' @param new_var name of the new variable to be added to the dataframe
#'
#' @returns A dataframe with an added variable containing nested dataframes with
#'  variables 'uri' and 'label'. The nested datasets include the original
#'  concepts.
#'
#' @examples
#' broaden_concept(d, uri, broader concepts)
#' @export
broaden_concept <- function(data, uri, new_var) {
  data |>
    mutate( {{ new_var }} := lapply({{ uri }}, \(x) { get_broader_concepts(x) } ))
}

#' Function to filter a dataset based with nested concepts on concept label
#'
#' `filter_concept()` Filter a dataset on a column with concepts as nested
#'   dataframes. The nested dataframes must contain a 'label' variable and a
#'   'uri' variable. This is the format returned by the broaden_concepts
#'   function.
#'
#' @param data a dataframe containing a variable with concept uri's.
#'
#' @param uri the dataframe variable containing the nested data frames
#'
#' @param label a string representing the label of the concept. The filter
#'  function will return all rows with an exact match for this label in the
#'  nested dataset.
#'
#' @returns A filtered data frame
#'
#' @examples
#' filter(d, concepts, 'ijzertijd')
#' @export
filter_concept <- function(data, var, label) {
  data |>
    filter(as.logical(lapply({{ var }}, \(x) {label %in% x$label})))
}
