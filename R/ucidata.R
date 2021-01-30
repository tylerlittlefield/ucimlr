#' Current UCI Datasets
#'
#' This function scrapes data from UCI's Machine Learning repository.
#' Specifically, it's scrapes a table from the datasets page. The table
#' describes characteristics about the data.
#'
#' @format
#' \enumerate{
#'   \item Name: The name of the dataset.
#'   \item Type: Multivariate, time-series, etc.
#'   \item Task: Classification, regression, etc.
#'   \item Variable Types: Categorical, integer, etc.
#'   \item Observations: Number of rows
#'   \item Variables: Number of columns
#'   \item Year: The year the dataset was donated
#' }
#'
#'
#' @param result One of raw, nest, or flat.
#' @param url The URL that points to the UCIMLR dataset table.
#' @importFrom rvest html_nodes html_table
#' @importFrom xml2 read_html
#' @importFrom tibble as_tibble
#' @importFrom tidyr nest separate_rows
#' @references \url{https://archive.ics.uci.edu/ml/datasets.html}
#' @export
ucidata <- function(
  result = "raw",
  url = "https://archive.ics.uci.edu/ml/datasets.php"
) {
  message("* Scraping datasets from <", url, ">")

  var_names <- c(
    "name",
    "type",
    "task",
    "variable_types",
    "observations",
    "variables",
    "year"
  )

  x <- read_html(url)
  x <- html_nodes(x, xpath = "//table")
  x <- x[6:length(x)]
  x <- html_table(x, header = TRUE, fill = TRUE)[[1]]
  x <- x[x$Name != "", ]
  x <- x[,3:9]
  colnames(x) <- var_names
  x[x==""] <- NA
  x <- as_tibble(x)

  switch (result,
    "raw" = x,
    "nest" = {
      x %>%
        separate_rows(variable_types, sep = ", ") %>%
        nest(variable_types = variable_types) %>%
        separate_rows(type, sep = ", ") %>%
        nest(type = type) %>%
        separate_rows(task, sep = ", ") %>%
        nest(task = task)
    },
    "flat" = {
      x %>%
        separate_rows(variable_types, sep = ", ") %>%
        separate_rows(type, sep = ", ") %>%
        separate_rows(task, sep = ", ")
    }
  )
}
