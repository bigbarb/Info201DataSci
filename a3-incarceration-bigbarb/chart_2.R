#Chart 2
#Trends Over Time Chart

#Load Libraries
library("tidyverse")
library("ggplot2")
library("dplyr")
library("maps")
library("stringr")
library("plotly")

#Load the Data
usprisonpop_df <- read.csv("us-prison-pop.csv")

#Filter for total prison population across 4 various counties 
#Group by year, and remove the NA Values
total_pop_prison <- usprisonpop_df %>% 
  filter(state == "WA", county_name %in% c("Clark County", "King County", "Pierce County", "Spokane County")) %>% 
  select(year, county_name, total_prison_pop) %>% 
  drop_na() %>%
  group_by(year)

#Plotting data on total prison population vs four WA counties
#and saving it into a variable called trends to recall in index.RMD file
trends <- ggplot(total_pop_prison) +
   geom_line(mapping = aes( x = year, y = total_prison_pop, color = county_name), size = 1.4) +
   labs(title = "Total Prison Population across Four WA Counties Across Time ",
      x = "Years", y = "Total Prison Population", color = "County")
  


  