#' Relative CPU Performance Data
#'
#' Relative CPU Performance Data, described in terms of its cycle time, memory
#' size, etc.
#'
#' @format A data frame with 209 observations on the following 10 variables.
#' \enumerate{
#'   \item vendor: 30 (adviser, amdahl,apollo, basf, bti, burroughs, c.r.d,
#'   cambex, cdc, dec,   dg, formation, four-phase, gould, honeywell, hp, ibm,
#'   ipl, magnuson,   microdata, nas, ncr, nixdorf, perkin-elmer, prime,
#'   siemens, sperry,   sratus, wang)
#'   \item Model Name: many unique symbols
#'   \item MYCT: machine cycle time in nanoseconds (integer)
#'   \item MMIN: minimum main memory in kilobytes (integer)
#'   \item MMAX: maximum main memory in kilobytes (integer)
#'   \item CACH: cache memory in kilobytes (integer)
#'   \item CHMIN: minimum channels in units (integer)
#'   \item CHMAX: maximum channels in units (integer)
#'   \item PRP: published relative performance (integer)
#'   \item ERP: estimated relative performance from the original article (integer)
#' }
#'
#' @details
#' Relative CPU Performance Data, described in terms of its cycle time, memory
#' size, etc. The estimated relative performance values were estimated by the
#' authors using a linear regression method.
#'
#' @references
#' Ein-Dor and Feldmesser (CACM 4/87, pp 308-317)
#'
#' Kibler,D. & Aha,D. (1988). Instance-Based Prediction of Real-Valued
#' Attributes. In Proceedings of the CSCSI (Canadian AI) Conference.
#'
#' \url{https://archive.ics.uci.edu/ml/machine-learning-databases/cpu-performance/}
#'
#' \url{https://archive.ics.uci.edu/ml/datasets/Computer+Hardware}
#'
#' @source
#' Creators:
#' Phillip Ein-Dor and Jacob Feldmesser
#' Ein-Dor: Faculty of Management; Tel Aviv University; Ramat-Aviv;
#' Tel Aviv, 69978; Israel
#'
#' Donor: David W. Aha (aha@ics.uci.edu) (714) 856-8779
#'
#' Date: October, 1987
"cpu"
