# src: https://archive.ics.uci.edu/ml/machine-learning-databases/wine/

wine_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data"

cols <- c("Type",
          "Alcohol",
          "Malic acid",
          "Ash",
          "Alcalinity of ash",
          "Magnesium",
          "Total phenols",
          "Flavanoids",
          "Nonflavanoid phenols",
          "Proanthocyanins",
          "Color intensity",
          "Hue",
          "Dilution",
          "Proline")

wine <- read.csv(wine_url,
                 header = FALSE,
                 col.names = cols,
                 stringsAsFactors = FALSE)

wine <- tibble::as_tibble(wine)
wine <- janitor::clean_names(wine, "snake")

usethis::use_data(wine, overwrite = TRUE)
