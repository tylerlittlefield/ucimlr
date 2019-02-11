#' Zoo
#'
#' A simple database containing 17 Boolean-valued attributes. The "type"
#' attribute appears to be the class attribute. Here is a breakdown of which
#' animals are in which type: (I find it unusual that there are 2 instances of
#' "frog" and one of "girl"!)
#'
#' @format A data frame with 101 observations on the following 18 variables.
#' \enumerate{
#'   \item animal name:      Unique for each instance
#'   \item hair:		Boolean
#'   \item feathers:		Boolean
#'   \item eggs:		Boolean
#'   \item milk:		Boolean
#'   \item airborne:		Boolean
#'   \item aquatic:		Boolean
#'   \item predator:		Boolean
#'   \item toothed:		Boolean
#'   \item backbone:		Boolean
#'   \item breathes:		Boolean
#'   \item venomous:		Boolean
#'   \item fins:		Boolean
#'   \item legs:		Numeric (set of values: {0,2,4,5,6,8})
#'   \item tail:		Boolean
#'   \item domestic:		Boolean
#'   \item catsize:		Boolean
#'   \item type:		Numeric (integer values in range [1,7], see details)
#' }
#'
#' @details
#' Type Codes:
#' \enumerate{
#' \item (41) aardvark, antelope, bear, boar, buffalo, calf,
#' cavy, cheetah, deer, dolphin, elephant,
#' fruitbat, giraffe, girl, goat, gorilla, hamster,
#' hare, leopard, lion, lynx, mink, mole, mongoose,
#' opossum, oryx, platypus, polecat, pony,
#' porpoise, puma, pussycat, raccoon, reindeer,
#' seal, sealion, squirrel, vampire, vole, wallaby,wolf
#' \item (20) chicken, crow, dove, duck, flamingo, gull, hawk,
#' kiwi, lark, ostrich, parakeet, penguin, pheasant,
#' rhea, skimmer, skua, sparrow, swan, vulture, wren
#' \item (5)  pitviper, seasnake, slowworm, tortoise, tuatara
#' \item (13) bass, carp, catfish, chub, dogfish, haddock,
#' herring, pike, piranha, seahorse, sole, stingray, tuna
#' \item (4)  frog, frog, newt, toad
#' \item (8)  flea, gnat, honeybee, housefly, ladybird, moth, termite, wasp
#' \item (10) clam, crab, crayfish, lobster, octopus,
#' scorpion, seawasp, slug, starfish, worm
#' }
#'
#' @references
#' Past Usage: None known other than what is shown in Forsyth's PC/BEAGLE User's
#' Guide.
#'
#' \url{https://archive.ics.uci.edu/ml/machine-learning-databases/zoo/}
#'
#' \url{https://archive.ics.uci.edu/ml/datasets/Zoo}
#'
#' @source
#' Creator: Richard Forsyth
#'
#' Donor:
#' Richard S. Forsyth
#' 8 Grosvenor Avenue
#' Mapperley Park
#' Nottingham NG3 5DX
#' 0602-621676
#'
#' Date: 5/15/1990
"zoo"
