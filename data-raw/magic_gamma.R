# src: https://archive.ics.uci.edu/ml/machine-learning-databases/magic/

magic_gamma_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/magic/magic04.data"

cols <- c("fLength",
          "fWidth",
          "fSize",
          "fConc",
          "fConc1",
          "fAsym",
          "fM3Long",
          "fM3Trans",
          "fAlpha",
          "fDist",
          "class")

magic_gamma <- read.csv(magic_gamma_url,
                        header = FALSE,
                        col.names = cols,
                        stringsAsFactors = FALSE)

magic_gamma <- tibble::as_tibble(magic_gamma)
magic_gamma <- janitor::clean_names(magic_gamma, "snake")

usethis::use_data(magic_gamma, overwrite = TRUE)
