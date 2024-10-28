# save_data.R
library(tigris)  # Load the tigris package for spatial data
library(sf)      # Load the sf package for handling spatial objects

# Fetch counties and process the data
us_geo <- counties(cb = TRUE) |> 
  shift_geometry() |> 
  filter(STUSPS %in% unique(fo_add$state))  # Ensure fo_add is defined beforehand

# Save the processed data as RData
save(us_geo, file = "data/us_geo.RData")