# This script creates a dataframe of all current UCI datasets with tidy packages

library(dplyr)
library(purrr)
library(rvest)
library(janitor)

root <- "https://archive.ics.uci.edu/ml/datasets.html"
var_names <- c("name",
               "type",
               "task",
               "variable_types",
               "observations",
               "variables",
               "year")

ucidata <- root %>%
  read_html() %>%
  html_nodes(xpath = "//table") %>%
  .[6:length(.)] %>%
  html_table(header = TRUE, fill = TRUE) %>%
  .[[1]] %>%
  clean_names("snake") %>%
  as_tibble() %>%
  filter(name != "") %>%
  select(-c(name, data_types)) %>%
  set_names(var_names) %>%
  mutate(
    data_types = case_when(
      data_types == "" ~ NA_character_,
      TRUE ~ data_types
      )
    )

ucidata
