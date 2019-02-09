# src: https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/

abalone_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data"

cols <- c("sex",
          "length",
          "diameter",
          "height",
          "whole_weight",
          "shucked_weight",
          "viscera_weight",
          "shell_weight",
          "rings")

abalone <- read.csv(abalone_url,
                    header = FALSE,
                    col.names = cols,
                    stringsAsFactors = FALSE)

abalone <- tibble::as_tibble(abalone)
abalone <- janitor::clean_names(abalone, "snake")

usethis::use_data(abalone, overwrite = TRUE)
