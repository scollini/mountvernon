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

#Filter Lucy by location
lucy_hh <- lucy %>%
  select(id, Primary.Source, Purpose.of.Event, Subpurpose.of.Event, Year, Standardized.Spelling.Location, Spelling.First.Name.as.found.in.document, Birth.Year, Age.at.Event, Physical.Description, Skill.1, Owner, Mother) %>%
  filter(Standardized.Spelling.Location == "Mansion House")

write.csv(lucy_hh, "lucy_hh.csv")

lucy_rf <- lucy %>%
  select(id, Primary.Source, Purpose.of.Event, Subpurpose.of.Event, Year, Standardized.Spelling.Location, Spelling.First.Name.as.found.in.document, Birth.Year, Age.at.Event, Physical.Description, Skill.1, Owner, Mother) %>%
  filter(Standardized.Spelling.Location == "River Farm")

write.csv(lucy_rf, "lucy_rf.csv")

lucy_dr <- lucy %>%
  select(id, Primary.Source, Purpose.of.Event, Subpurpose.of.Event, Year, Standardized.Spelling.Location, Spelling.First.Name.as.found.in.document, Birth.Year, Age.at.Event, Physical.Description, Skill.1, Owner, Mother) %>%
  filter(Standardized.Spelling.Location == "Dogue Run")

write.csv(lucy_dr, "lucy_dr.csv")

lucy_mh <- lucy %>%
  select(id, Primary.Source, Purpose.of.Event, Subpurpose.of.Event, Year, Standardized.Spelling.Location, Spelling.First.Name.as.found.in.document, Birth.Year, Age.at.Event, Physical.Description, Skill.1, Owner, Mother) %>%
  filter(Standardized.Spelling.Location == "Muddy Hole")

write.csv(lucy_mh, "lucy_mh.csv")

lucy_fy <- lucy %>%
  select(id, Primary.Source, Purpose.of.Event, Subpurpose.of.Event, Year, Standardized.Spelling.Location, Spelling.First.Name.as.found.in.document, Birth.Year, Age.at.Event, Physical.Description, Skill.1, Owner, Mother) %>%
  filter(Standardized.Spelling.Location == "Ferry Plantation")

write.csv(lucy_fy, "lucy_fy.csv")

lucy_fr <- lucy %>%
  select(id, Primary.Source, Purpose.of.Event, Subpurpose.of.Event, Year, Standardized.Spelling.Location, Spelling.First.Name.as.found.in.document, Birth.Year, Age.at.Event, Physical.Description, Skill.1, Owner, Mother) %>%
  filter(Standardized.Spelling.Location == "French's Plantation")

write.csv(lucy_fr, "lucy_fr.csv")

lucy_uf <- lucy %>%
  select(id, Primary.Source, Purpose.of.Event, Subpurpose.of.Event, Year, Standardized.Spelling.Location, Spelling.First.Name.as.found.in.document, Birth.Year, Age.at.Event, Physical.Description, Skill.1, Owner, Mother) %>%
  filter(Standardized.Spelling.Location == "Union Farm")

write.csv(lucy_uf, "lucy_uf.csv")
