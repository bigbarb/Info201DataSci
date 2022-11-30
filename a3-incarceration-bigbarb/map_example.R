#Map

#Load Libraries
library("tidyverse")
library("ggplot2")
library("dplyr")
library("usmap")
library("stringr")
library("plotly")

#Load the data frame and functions
usprisonpop_df <- read.csv("us-prison-pop.csv")

state_d <- map_data("state")

data("state.fips")

state.fips <- state.fips %>%
  mutate(region = str_replace(polyname, ":.*", ""))

state_map <- left_join(state_d, state.fips, join = 'region') %>%
  select (long, lat, abb, region)

#Filtering data after 2003
data_total_pop <- usprisonpop_df %>% 
  group_by(state) %>% 
  filter(year > 2003) %>% 
  select(year, state, total_pop) %>% 
  summarise(sum_total_pop = sum(total_pop))

maps_date <- inner_join(data_total_pop, state_map, by = c('state' = 'abb'))

#total pop us map
#Use minimalist theme
#Save plot into prison_pop_map to recal later in index.rmd file
prison_pop_map <- ggplot(data = maps_date) +
  geom_polygon(mapping = aes (x = long, y = lat, group = region, fill = sum_total_pop)) +
  coord_map() +
  labs(title = "Total Prison Population across all US states since the year 2003",
  x = "longitude",
  y = "latitude",
  fill = "sum of the total population") +
  theme_minimal()
  
  
  