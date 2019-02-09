# src: https://archive.ics.uci.edu/ml/machine-learning-databases/00485/

travel_review_ratings_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00485/google_review_ratings.csv"

cols <- c("user id",
          "churches",
          "resorts",
          "beaches",
          "parks",
          "theatres",
          "museums",
          "malls",
          "zoo",
          "restaurants",
          "pubs/bars",
          "local services",
          "burger/pizza shops",
          "hotels/other lodgings",
          "juice bars",
          "art galleries",
          "dance clubs",
          "swimming pools",
          "gyms",
          "bakeries",
          "beauty & spas",
          "cafes",
          "view points",
          "monuments",
          "gardens",
          "X1")

travel_review_ratings <- read.csv(travel_review_ratings_url,
                                  header = TRUE,
                                  col.names = cols,
                                  stringsAsFactors = FALSE)

travel_review_ratings <- travel_review_ratings[,1:25]

travel_review_ratings <- tibble::as_tibble(travel_review_ratings)
travel_review_ratings <- janitor::clean_names(travel_review_ratings, "snake")

usethis::use_data(travel_review_ratings, overwrite = TRUE)
