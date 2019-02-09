# src: https://archive.ics.uci.edu/ml/datasets/Forest+Fires

url_forest_fires <- "https://archive.ics.uci.edu/ml/machine-learning-databases/forest-fires/forestfires.csv"

forest_fires <- read.csv(url_forest_fires,
                         header = TRUE,
                         stringsAsFactors = FALSE)

forest_fires <- tibble::as_tibble(forest_fires)
forest_fires <- janitor::clean_names(forest_fires, "snake")

usethis::use_data(forest_fires, overwrite = TRUE)
