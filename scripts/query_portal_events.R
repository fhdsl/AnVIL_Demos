library(httr)
library(jsonlite)
library(tidyverse)
library(stringr)
library(lubridate)

# --------- Function to parse Portal data ---------

extract_data <- function(str) {
  title <- str_extract(str, "(?<=title: \")[^\"]+")
  
  date <- str_extract(str, "(?<=sessionStart: [\"|“])[^\"]+")
  date_my <- str_remove(date, "\\s+\\d{1,2}:\\d{2}\\s+[AP]M$")
  date_my_clean <-
    parse_date_time(gsub(",", "", date_my), orders = "dmy")
  month_ <- month(date_my_clean, label = TRUE)
  year_ <- year(date_my_clean)
  
  location <- str_extract(str, "(?<=location: \")[^\"]+")
  
  data.frame(
    title = title,
    date = date_my_clean,
    month = month_,
    year = year_,
    location = location
  )
}

# --------- Collect data ---------

# Set up API call to the AnVIL Portal repo
url <-
  "https://api.github.com/repos/anvilproject/anvil-portal/contents/content/events"
headers <- c(Accept = "application/vnd.github.v3+json")
params <- list(ref = "main")

# Make API call and parse response
response <- GET(url, query = params, headers = headers)
if (status_code(response) != 200) {
  stop(paste0("Error: ", content(response)$message))
}
content <- fromJSON(rawToChar(response$content))

# Filter to only Markdown files and retrieve content
md_files <- content[grep("\\.md$", content$name),]
md_contents <- lapply(md_files$download_url, function(file) {
  response <- GET(file, headers = headers)
  if (status_code(response) != 200) {
    stop(paste0("Error: ", content(response)$message))
  }
  content(response, "text")
})

# --------- Parse data ---------

dat <- dplyr::bind_rows(lapply(md_contents, extract_data))

dat <- arrange(dat, date) %>% filter(date > today())

# --------- Save the parsed data ---------

# Create an artifact file containing the repos, else write an empty file
if (!dir.exists("resources")) {
  dir.create("resources")
}
if (nrow(dat) > 0) {
  readr::write_tsv(dat, file.path('resources', 'upcoming_portal_events.tsv'))
} else {
  readr::write_tsv(tibble(),
                   file.path('resources', 'upcoming_portal_events.tsv'))
}
