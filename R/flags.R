#' Flags
#'
#' From Collins Gem Guide to Flags, 1986.
#'
#' @format A data frame with 194 observations on the following 30 variables.
#' \enumerate{
#'   \item name:	Name of the country concerned
#'   \item landmass:	1=N.America, 2=S.America, 3=Europe, 4=Africa, 4=Asia, 6=Oceania
#'   \item zone:	Geographic quadrant, based on Greenwich and the Equator; 1=NE, 2=SE, 3=SW, 4=NW
#'   \item area:	in thousands of square km
#'   \item population:	in round millions
#'   \item language: 1=English, 2=Spanish, 3=French, 4=German, 5=Slavic, 6=Other Indo-European, 7=Chinese, 8=Arabic, 9=Japanese/Turkish/Finnish/Magyar, 10=Others
#'   \item religion: 0=Catholic, 1=Other Christian, 2=Muslim, 3=Buddhist, 4=Hindu, 5=Ethnic, 6=Marxist, 7=Others
#'   \item bars: Number of vertical bars in the flag
#'   \item stripes: Number of horizontal stripes in the flag
#'   \item colours: Number of different colours in the flag
#'   \item red: 0 if red absent, 1 if red present in the flag
#'   \item green: same for green
#'   \item blue: same for blue
#'   \item gold: same for gold (also yellow)
#'   \item white: same for white
#'   \item black: same for black
#'   \item orange: same for orange (also brown)
#'   \item mainhue: predominant colour in the flag (tie-breaks decided by taking the topmost hue, if that fails then the most central hue, and if that fails the leftmost hue)
#'   \item circles: Number of circles in the flag
#'   \item crosses: Number of (upright) crosses
#'   \item saltires: Number of diagonal crosses
#'   \item quarters: Number of quartered sections
#'   \item sunstars: Number of sun or star symbols
#'   \item crescent: 1 if a crescent moon symbol present, else 0
#'   \item triangle: 1 if any triangles present, 0 otherwise
#'   \item icon: 1 if an inanimate image present (e.g., a boat), otherwise 0
#'   \item animate: 1 if an animate image (e.g., an eagle, a tree, a human hand) present, 0 otherwise
#'   \item text: 1 if any letters or writing on the flag (e.g., a motto or slogan), 0 otherwise
#'   \item topleft: colour in the top-left corner (moving right to decide tie-breaks)
#'   \item botright: Colour in the bottom-left corner (moving left to decide tie-breaks)
#' }
#'
#' @details
#' This data file contains details of various nations and their flags.
#' In this file the fields are separated by spaces (not commas).  With
#' this data you can try things like predicting the religion of a country
#' from its size and the colours in its flag.
#'
#' 10 attributes are numeric-valued.  The remainder are either Boolean-
#' or nominal-valued.
#'
#' @references
#' Forsyth's PC/BEAGLE User's Guide.
#'
#' \url{https://archive.ics.uci.edu/ml/machine-learning-databases/{dataset endpoint}}
#'
#' \url{https://archive.ics.uci.edu/ml/datasets/{dataset endpoint}}
#'
#' @source
#' Creators: Collected primarily from the "Collins Gem Guide to Flags": Collins Publishers (1986).
#'
#' Donor:
#' Richard S. Forsyth
#' 8 Grosvenor Avenue
#' Mapperley Park
#' Nottingham NG3 5DX
#' 0602-621676
"flags"
