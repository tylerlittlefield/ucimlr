#' Adult
#'
#' Extraction was done by Barry Becker from the 1994 Census database. A set of
#' reasonably clean records was extracted using the following conditions:
#' ((AAGE > 16) && (AGI > 100) && (AFNLWGT > 1) && (HRSWK > 0))
#'
#' @format A data frame with 32561 observations on the following 15 variables.
#' \enumerate{
#'   \item age
#'   \item workclass
#'   \item fnlwgt
#'   \item education
#'   \item education-num
#'   \item marital-status
#'   \item occupation
#'   \item relationship
#'   \item race
#'   \item sex
#'   \item capital-gain
#'   \item capital-loss
#'   \item hours-per-week
#'   \item native-country
#' }
#' @details
#' Predict whether income exceeds $50K/yr based on census data. Also known as "Census Income" dataset.
#' @references
#' https://archive.ics.uci.edu/ml/machine-learning-databases/adult/
#'
#' http://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.names
#'
#' https://archive.ics.uci.edu/ml/datasets/adult
#' @source
#' Ronny Kohavi and Barry Becker
#' Data Mining and Visualization
#' Silicon Graphics.
#' e-mail: ronnyk '@' live.com for questions.
"adult"
