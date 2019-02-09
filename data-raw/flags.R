# src: https://archive.ics.uci.edu/ml/machine-learning-databases/flags/

flags_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/flags/flag.data"

cols <- c("name",
          "landmass",
          "zone",
          "area",
          "population",
          "language",
          "religion",
          "bars",
          "stripes",
          "colours",
          "red",
          "green",
          "blue",
          "gold",
          "white",
          "black",
          "orange",
          "mainhue",
          "circles",
          "crosses",
          "saltires",
          "quarters",
          "sunstars",
          "crescent",
          "triangle",
          "icon",
          "animate",
          "text",
          "topleft",
          "botright")

flags <- read.csv(flags_url,
                  header = FALSE,
                  col.names = cols,
                  stringsAsFactors = FALSE)

flags <- tibble::as_tibble(flags)
flags <- janitor::clean_names(flags, "snake")

usethis::use_data(flags, overwrite = TRUE)
