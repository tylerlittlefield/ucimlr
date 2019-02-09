# src: https://archive.ics.uci.edu/ml/machine-learning-databases/meta-data/

meta_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/meta-data/meta.data"

cols <- c("DS_Name",
          "T",
          "N",
          "p",
          "k",
          "Bin",
          "Cost",
          "SDratio",
          "correl",
          "cancor1",
          "cancor2",
          "fract1",
          "fract2",
          "skewness",
          "kurtosis",
          "Hc",
          "Hx",
          "MCx",
          "EnAtr",
          "NSRatio",
          "Alg_Name",
          "Norm_error")

meta <- read.csv(meta_url,
                 header = FALSE,
                 col.names = cols,
                 na.strings = "?",
                 stringsAsFactors = FALSE)

meta <- tibble::as_tibble(meta)
meta <- janitor::clean_names(meta, "snake")

usethis::use_data(meta, overwrite = TRUE)
