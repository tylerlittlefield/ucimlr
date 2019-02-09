# src: https://archive.ics.uci.edu/ml/machine-learning-databases/auto-mpg/

auto_mpg_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/auto-mpg/auto-mpg.data"

cols <- c("mpg",
          "cylinders",
          "displacement",
          "horsepower",
          "weight",
          "acceleration",
          "model year",
          "origin",
          "car name")

auto_mpg <- read.table(auto_mpg_url,
                       header = FALSE,
                       col.names = cols,
                       na.strings = "?",
                       stringsAsFactors = FALSE)

auto_mpg <- tibble::as_tibble(auto_mpg)
auto_mpg <- janitor::clean_names(auto_mpg, "snake")

usethis::use_data(auto_mpg, overwrite = TRUE)
