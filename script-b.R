library(pins)
library(httpuv)
library(dplyr)
gdrive_folder_name <- "test_data_app"
googledrive::drive_auth() # Authenticate in the browser
board <- board_gdrive(path = gdrive_folder_name)
newdata <-
  board |>
  pin_read(name = "Filtered mtcars")
nrow(newdata)
