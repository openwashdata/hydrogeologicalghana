# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame
# Load packages ----------------------------------------------------------------
## Run the following code in console if you don't have the packages
## install.packages(c("usethis", "fs", "here", "readr", "readxl", "openxlsx"))
library(usethis)
library(fs)
library(here)
library(readr)
library(readxl)
library(openxlsx)
library(janitor)
library(stringr)

# Read data --------------------------------------------------------------------
data_in <- readxl::read_excel("data-raw/boreholes-Benedict-89.xlsx")

# Tidy data --------------------------------------------------------------------
## Clean the raw data into a tidy format here
hydrogeologicalghana <- data_in |>
  rename_with(~ str_remove(.x, "\\s*\\([^\\)]+\\)")) |>
  clean_names() |>
  rename(static_water_level = static_water_level_l)

# Export Data ------------------------------------------------------------------
usethis::use_data(hydrogeologicalghana, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))
readr::write_csv(hydrogeologicalghana,
                 here::here("inst", "extdata", paste0("hydrogeologicalghana", ".csv")))
openxlsx::write.xlsx(hydrogeologicalghana,
                     here::here("inst", "extdata", paste0("hydrogeologicalghana", ".xlsx")))
