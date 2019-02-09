# src: https://archive.ics.uci.edu/ml/machine-learning-databases/liver-disorders/

liver_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/liver-disorders/bupa.data"

cols <- c("mcv",
          "alkphos",
          "sgpt",
          "sgot",
          "gammagt",
          "drinks",
          "selector")

liver <- read.csv(liver_url,
                  header = FALSE,
                  col.names = cols,
                  stringsAsFactors = FALSE)

liver <- tibble::as_tibble(liver)
liver <- janitor::clean_names(liver, "snake")

usethis::use_data(liver, overwrite = TRUE)
