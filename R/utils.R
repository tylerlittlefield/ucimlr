# to calculate size of package and report size in README.md
pkg_size <- function() {
  files <- list.files(".", all.files = TRUE, recursive = TRUE)
  files_info <- file.info(files)
  pkg_size_bytes <- round(sum(files_info$size) / 1e6, 2)
  pkg_size_mb <- paste0(pkg_size_bytes, " MB")
  return(pkg_size_mb)
}
