# src: https://archive.ics.uci.edu/ml/machine-learning-databases/zoo/

zoo <- "https://archive.ics.uci.edu/ml/machine-learning-databases/zoo/zoo.data"

cols <- c("animal name",
          "hair",
          "feathers",
          "eggs",
          "milk",
          "airborne",
          "aquatic",
          "predator",
          "toothed",
          "backbone",
          "breathes",
          "venomous",
          "fins",
          "legs",
          "tail",
          "domestic",
          "catsize",
          "type")

zoo <- read.csv(zoo,
                header = FALSE,
                col.names = cols,
                stringsAsFactors = FALSE)

zoo <- tibble::as_tibble(zoo)
zoo <- janitor::clean_names(zoo, "snake")

usethis::use_data(zoo, overwrite = TRUE)
