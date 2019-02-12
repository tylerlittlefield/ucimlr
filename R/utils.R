# Check Package Size
#
# Thanks to Alan Dipert for the help with this one.
#
# This function is used to calculate size of package and report size in
# README.md
pkg_size <- function(package) {
  root <- find.package(package)
  rel_paths <- list.files(root, all.files = TRUE, recursive = TRUE)
  abs_paths <- file.path(root, rel_paths)
  paste0(round(sum(file.info(abs_paths)$size) / 1e6, 2), " MB")
}
