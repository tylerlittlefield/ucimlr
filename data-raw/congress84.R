# src: https://archive.ics.uci.edu/ml/machine-learning-databases/voting-records/

congress84_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/voting-records/house-votes-84.data"

cols <- c("Class",
          "handicapped-infants",
          "water-project-cost-sharing",
          "adoption-of-the-budget-resolution",
          "physician-fee-freeze",
          "el-salvador-aid",
          "religious-groups-in-schools",
          "anti-satellite-test-ban",
          "aid-to-nicaraguan-contras",
          "mx-missile",
          "immigration",
          "synfuels-corporation-cutback",
          "education-spending",
          "superfund-right-to-sue",
          "crime",
          "duty-free-exports",
          "export-administration-act-south-africa")

congress84 <- read.csv(congress84_url,
                       header = FALSE,
                       col.names = cols,
                       na.strings = "?",
                       stringsAsFactors = FALSE)

congress84 <- tibble::as_tibble(congress84)
congress84 <- janitor::clean_names(congress84, "snake")

usethis::use_data(congress84, overwrite = TRUE)
