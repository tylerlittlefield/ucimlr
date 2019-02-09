# Contributing to ucidata

This outlines how to propose a change to ucidata. There aren't any strict guidelines, I'm just providing some templates and describing my workflow for adding datasets. Feel free to suggest and changes you feel are necessary.

### Fixing typos

Small typos or grammatical errors in documentation may be edited directly using
the GitHub web interface, so long as the changes are made in the _source_ file.

*  YES: you edit a roxygen comment in a `.R` file below `R/`.
*  NO: you edit an `.Rd` file below `man/`.

### Adding datasets

There are 2 components to each dataset:

1. Documentation (`R/dataset_name.R`)
2. Dataset script (`data-raw/dataset_name.R`)

When adding documentation you can follow this template:

```r
#' Dataset Name
#' 
#' Dataset description
#'
#' @format A data frame with {n} observations on the following {n} variables.
#' \enumerate{
#'   \item var1: description if possible
#'   \item var2: description if possible
#' }
#'
#' @details
#' Additional details, sometimes package have a 'task' or background 
#' information.
#'
#' @references
#' Any relevant papers
#'
#' \url{https://archive.ics.uci.edu/ml/machine-learning-databases/{dataset endpoint}}
#'
#' \url{https://archive.ics.uci.edu/ml/datasets/{dataset endpoint}}
#'
#' @source
#' Donor, creator, requested citation, etc.
"dataset_name"
```

When adding a dataset script you can follow a somewhat consistent template, you're milage will very though, not all datasets are alike:

```r
# src: https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/

{dataset_name_url} <- "https://archive.ics.uci.edu/ml/machine-learning-databases/{datasetname}/{dataset_file.data}"

cols <- c("var1",
          "var2")

{dataset_name} <- read.csv({dataset_name_url},
                    header = FALSE,
                    col.names = cols,
                    stringsAsFactors = FALSE)

{dataset_name} <- tibble::as_tibble({dataset_name})
{dataset_name} <- janitor::clean_names({dataset_name}, "snake")

usethis::use_data({dataset_name}, overwrite = TRUE)
```
