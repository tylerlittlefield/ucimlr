# src: https://archive.ics.uci.edu/ml/machine-learning-databases/badges/

badges_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/badges/badges.data"

cols <- c("badge",
          "name")

Lines <- readLines(badges_url)
Lines <- strsplit(Lines)
Lines <- sub(" ", ",", Lines)
Lines <- Lines[-1]
Lines <- strsplit(Lines, ",")

badge <- sapply(Lines, "[[", 1)
names <- sapply(Lines, "[[", 2)

badges <- data.frame(badge = badge,
                     name = names,
                     stringsAsFactors = FALSE)

badges <- tibble::as_tibble(badges)
badges <- janitor::clean_names(badges, "snake")

usethis::use_data(badges, overwrite = TRUE)
