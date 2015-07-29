library(dplyr)
library(tidyr)

#Read in lucy data
lucy <- read.csv("~//Desktop/MountVernon/Names/Lucy/lucy_clean.csv", stringsAsFactors = FALSE, fileEncoding = "latin1")

#Select info for census
lucy_census <- lucy %>%
  select(id, Primary.Source, Purpose.of.Event, Year, Standardized.Spelling.Location, Spelling.First.Name.as.found.in.document, Birth.Year, Age.at.Event, Physical.Description, Owner, Mother) %>%
  filter(Purpose.of.Event == "Census")

#Write census csv
write.csv(lucy_census, "lucy_census.csv")

#Filter census by year and location to get a count
lucy_count <- lucy_census %>%
  group_by(Year, Standardized.Spelling.Location) %>%
  summarize(Count = n())

#Write count csv
write.csv(lucy_count, "lucy_count.csv")

