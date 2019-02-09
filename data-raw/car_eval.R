# src: https://archive.ics.uci.edu/ml/datasets/Car+Evaluation

car_eval_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/car/car.data"

cols <- c("buying",
          "maint",
          "doors",
          "persons",
          "lug_boot",
          "safety",
          "class")

car_eval <- read.csv(car_eval_url,
                     header = FALSE,
                     col.names = cols,
                     stringsAsFactors = FALSE)

car_eval <- tibble::as_tibble(car_eval)
car_eval <- janitor::clean_names(car_eval, "snake")

usethis::use_data(car_eval, overwrite = TRUE)
