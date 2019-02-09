# src: https://archive.ics.uci.edu/ml/machine-learning-databases/cpu-performance/

cpu_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/cpu-performance/machine.data"

cols <- c("vendor",
          "Model",
          "MYCT",
          "MMIN",
          "MMAX",
          "CACH",
          "CHMIN",
          "CHMAX",
          "PRP",
          "ERP")

cpu <- read.csv(cpu_url,
                header = FALSE,
                col.names = cols,
                stringsAsFactors = FALSE)

cpu <- tibble::as_tibble(cpu)
cpu <- janitor::clean_names(cpu, "snake")

usethis::use_data(cpu, overwrite = TRUE)
