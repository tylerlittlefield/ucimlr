# src: http://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/

white_wine_url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-white.csv"
red_wine_url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-red.csv"

red_wine_data <- read.csv(red_wine_url, sep = ";", stringsAsFactors = FALSE)
white_wine_data <- read.csv(white_wine_url, sep = ";", stringsAsFactors = FALSE)

white_wine_data$color <- "white"
red_wine_data$color <- "red"

wine_quality <- rbind(red_wine_data, white_wine_data)

wine_quality <- tibble::as_tibble(wine_quality)
wine_quality <- janitor::clean_names(wine_quality, "snake")

names(wine_quality)[names(wine_quality) == 'p_h'] <- 'ph'

usethis::use_data(wine_quality, overwrite = TRUE)
