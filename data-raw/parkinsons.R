# src: https://archive.ics.uci.edu/ml/machine-learning-databases/parkinsons/telemonitoring/

parkinsons_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/parkinsons/telemonitoring/parkinsons_updrs.data"

parkinsons <- read.csv(parkinsons_url,
                       header = TRUE,
                       stringsAsFactors = FALSE)

parkinsons <- tibble::as_tibble(parkinsons)
parkinsons <- janitor::clean_names(parkinsons, "snake")

parkinsons$sex[parkinsons$sex == 0] <- "male"
parkinsons$sex[parkinsons$sex == 1] <- "female"

parkinsons <- tibble::as_tibble(parkinsons)
parkinsons <- janitor::clean_names(parkinsons, "snake")

usethis::use_data(parkinsons, overwrite = TRUE)
