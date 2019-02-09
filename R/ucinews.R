#' Latest UCI MLR News
#'
#' This function scrapes data from UCI's Machine Learning repository.
#' Specifically, it's scrapes a table from the main page. The table
#' contains latest information pertaining to the site.
#'
#' @format
#' \enumerate{
#'   \item Date: The date information was reported.
#'   \item Info: News description.
#' }
#'
#'
#' @param quiet If TRUE, a message informs the user where current UCI data is
#' coming from. If FALSE, no message is displayed. Defaults to FALSE.
#' @importFrom rvest html_nodes html_table html_text
#' @importFrom xml2 read_html
#' @importFrom tibble as_tibble
#'
#' @references \url{https://archive.ics.uci.edu/ml/index.php}
#' @export
ucinews <- function(quiet = FALSE) {
  if(!quiet)
    message("Scraping news from: https://archive.ics.uci.edu/ml/index.php")

  root <- "https://archive.ics.uci.edu/ml/index.php"
  root <- xml2::read_html(root)
  root <- rvest::html_nodes(root, "body > table")
  root <- root[[3]]
  root <- rvest::html_nodes(root, "tr")
  root <- root[3:9]
  root <- rvest::html_nodes(root, "td > span")
  root <- rvest::html_text(root)

  dates <- root[c(TRUE, FALSE)]
  dates <- gsub(":", "", dates)
  dates <- as.Date(dates, "%m-%d-%y")

  info <- root[c(FALSE, TRUE)]

  tibble::tibble(date = dates, info = info)
}
