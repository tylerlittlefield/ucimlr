# src: https://archive.ics.uci.edu/ml/machine-learning-databases/adult/

adult_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data"

cols <- c('age',
          'workclass',
          'fnlwgt',
          'education',
          'education_num',
          'marital_status',
          'occupation',
          'relationship',
          'race',
          'sex',
          'capital_gain',
          'capital_loss',
          'hours_per_week',
          'native_country',
          'income')

adult <- read.csv(adult_url,
                  col.names = cols,
                  fill = FALSE,
                  strip.white = TRUE,
                  na.strings = "?",
                  stringsAsFactors = FALSE)

adult <- tibble::as_tibble(adult)
adult <- janitor::clean_names(adult, "snake")

usethis::use_data(adult, overwrite = TRUE)
