library(dplyr)
library(stringr)

make_events_table <- function() {
  # Read in events found by GHA
  df <- tryCatch(
    # Check for the file created by GHA
    expr = {
      df <-
        readr::read_tsv("resources/upcoming_portal_events.tsv")
      
      # Drop the date column
      df <- df %>% select(-date)
      
      # Clean up column names and order them
      df <-
        df %>%
        unite(Date, c(month, year), sep = " ") %>% 
        rename(Event = title, Location = location) %>% 
        select(Date, Event, Location)
      
      return(df)
    },
    # Will error out if file doesn't exist - provides a blank tibble instead
    error = function(e) {
      df <-
        tibble(Date = "none",
               Event = "none",
               Location = "none")
      
      return(df)
    }
  )
  
  return(df)
}
