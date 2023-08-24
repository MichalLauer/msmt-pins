library(pins)
library(httpuv)
library(dplyr)
gdrive_folder_name <- "test_data_app" # Folder must be created in gdrive
googledrive::drive_auth() # Authenticate in the browser
board <- board_gdrive(path = gdrive_folder_name)
data <-
  mtcars |>
  filter(disp < 80)
board |>
  pin_write(data, name = "Filtered mtcars")
