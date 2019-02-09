# src: https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/

annealing_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/annealing/anneal.data"

cols <- c("family",
          "product-type",
          "steel",
          "carbon",
          "hardness",
          "temper_rolling",
          "condition",
          "formability",
          "strength",
          "non-ageing",
          "surface-finish",
          "surface-quality",
          "enamelability",
          "bc",
          "bf",
          "bt",
          "bw/me",
          "bl",
          "m",
          "chrom",
          "phos",
          "cbond",
          "marvi",
          "exptl",
          "ferro",
          "corr",
          "blue/bright/varn/clean",
          "lustre",
          "jurofm",
          "s",
          "p",
          "shape",
          "thick",
          "width",
          "len",
          "oil",
          "bore",
          "packing",
          "classes")

annealing <- read.csv(annealing_url,
                      header = FALSE,
                      col.names = cols,
                      na.strings = "?",
                      stringsAsFactors = FALSE)

annealing <- tibble::as_tibble(annealing)
annealing <- janitor::clean_names(annealing, "snake")

usethis::use_data(annealing, overwrite = TRUE)
