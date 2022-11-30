#Load libraries
library(dplyr)

#Load the data frame
climate_df <- read.csv("https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv", stringsAsFactors = FALSE)

#Mean/Average CO2 production per year for US
co2_mean <- climate_df %>% 
  group_by(country) %>% 
  summarize(mean = mean(co2, na.rm = TRUE))

# Max CO2 Production between selected time (1860 - 2020) for US
co2_max <- climate_df %>% 
  filter(year >= 1860, year <= 2020) %>% 
  group_by(country) %>% 
  summarize(max = max(co2, na.rm = TRUE))

#total CO2 Produced All time US
total_us_production <- climate_df %>% 
  group_by(country) %>% 
  summarize(sum_co2 = sum(co2, na.rm = TRUE)) %>% 
  filter(country == "United States") %>% 
  pull(sum_co2)

#Country with highest CO2 production 
country_highest <- climate_df %>% 
  filter(co2 == max(co2, na.rm = TRUE)) %>% 
  pull(country)

#Country with lowest avg CO2 production
country_lowest <- climate_df %>% 
  group_by(country) %>% 
  summarize(mean_co2 = mean(co2, na.rm = TRUE)) %>% 
  filter(mean_co2 == min(mean_co2, na.rm = TRUE)) %>% 
  pull(country)
