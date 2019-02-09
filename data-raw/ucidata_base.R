# This script creates a dataframe of all current UCI datasets with rvest only

library(rvest)

root <- "https://archive.ics.uci.edu/ml/datasets.html"
var_names <- c("name",
               "type",
               "task",
               "variable_types",
               "observations",
               "variables",
               "year")

root <- read_html(root)
root <- html_nodes(root, xpath = "//table")
root <- root[6:length(root)]
root <- html_table(root,header = TRUE, fill = TRUE)[[1]]
root <- root[root$Name != "", ]
root <- root[,3:9]
colnames(root) <- var_names
root[root==""] <- NA
ucidata <- root
rm(root)
