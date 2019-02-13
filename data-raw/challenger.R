# src: https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/

oring_erosion_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/space-shuttle/o-ring-erosion-only.data"
oring_all_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/space-shuttle/o-ring-erosion-or-blowby.data"

cols <- c("o_rings_at_risk",
          "thermal_distress",
          "launch_temp",
          "leak_check_pressure",
          "temporal_order_of_flight")

oring_erosion <- read.table(oring_erosion_url,
                            header = FALSE,
                            col.names = cols,
                            stringsAsFactors = FALSE)

oring_all <- read.table(oring_all_url,
                        header = FALSE,
                        col.names = cols,
                        stringsAsFactors = FALSE)

challenger <- list(
  oring_erosion_only = oring_erosion,
  oring_erosion_and_blowback = oring_all
)

challenger <- lapply(challenger, tibble::as_tibble)
challenger <- lapply(challenger, janitor::clean_names, "snake")

usethis::use_data(challenger, overwrite = TRUE)
