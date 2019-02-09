# src: https://archive.ics.uci.edu/ml/machine-learning-databases/autos/

automobile_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/autos/imports-85.data"

cols <- c("symboling",
          "normalized-losses",
          "make",
          "fuel-type",
          "aspiration",
          "num-of-doors",
          "body-style",
          "drive-wheels",
          "engine-location",
          "wheel-base",
          "length",
          "width",
          "height",
          "curb-weight",
          "engine-type",
          "num-of-cylinders",
          "engine-size",
          "fuel-system",
          "bore",
          "stroke",
          "compression-ratio",
          "horsepower",
          "peak-rpm",
          "city-mpg",
          "highway-mpg",
          "price")

automobile <- read.csv(automobile_url,
                       header = FALSE,
                       col.names = cols,
                       na.strings = "?",
                       stringsAsFactors = FALSE)

automobile <- tibble::as_tibble(automobile)
automobile <- janitor::clean_names(automobile, "snake")

usethis::use_data(automobile, overwrite = TRUE)
