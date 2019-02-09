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
#' @param quiet If TRUE, a message informs the user where current UCI data is
#' coming from. If FALSE, no message is displayed. Defaults to FALSE.
#' @importFrom rvest html_nodes html_table
#' @importFrom xml2 read_html
#' @importFrom tibble as_tibble
#'
#' @references \url{https://archive.ics.uci.edu/ml/datasets.html}
#' @export
ucidata <- function(quiet = FALSE) {
  if(!quiet)
    message("Scraping datasets from: https://archive.ics.uci.edu/ml/datasets.html")

  root <- "https://archive.ics.uci.edu/ml/datasets.html"

  var_names <- c("name",
                 "type",
                 "task",
                 "variable_types",
                 "observations",
                 "variables",
                 "year")

  root <- xml2::read_html(root)
  root <- rvest::html_nodes(root, xpath = "//table")
  root <- root[6:length(root)]
  root <- rvest::html_table(root,header = TRUE, fill = TRUE)[[1]]
  root <- root[root$Name != "", ]
  root <- root[,3:9]
  colnames(root) <- var_names
  root[root==""] <- NA
  ucidata <- tibble::as_tibble(root)
  rm(root)

  return(ucidata)
}
