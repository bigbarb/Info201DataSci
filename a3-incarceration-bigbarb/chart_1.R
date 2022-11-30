#Chart 1
#Variable Comparison Chart

#Load Libraries
library("tidyverse")
library("ggplot2")
library("dplyr")
library("maps")
library("stringr")
library("plotly")

#Load the Data
usprisonpop_df <- read.csv("us-prison-pop.csv")

#Group Prison Data by Men based of usprisonpop_df
grouped_prison_data_men <- usprisonpop_df %>%
  group_by(year) %>% 
  summarize(people = sum(male_prison_pop, na.rm = TRUE)) %>% 
  filter(year > 2003) %>% 
  mutate(Population = "Male")
  
#Group Prison Data by Women based on usprison_df
grouped_prison_data_women <- usprisonpop_df %>%
  group_by(year) %>% 
  summarize(people = sum(female_prison_pop, na.rm = TRUE)) %>% 
  filter(year > 2003) %>% 
  mutate(Population = "Female")

#R Bind both grouped_prison_data_women & grouped_prison_data_men to make grouped_gender_data
grouped_gender_data <- rbind(grouped_prison_data_men, grouped_prison_data_women) 

#Chart grouped_gender_data, comparing men vs women prison pop from the year 2003, side by side comparison
#Saved chart into a variable called male_female_prison_pop_2003 to recall in index.rmd file
male_female_prison_pop_2003 <- ggplot(data = grouped_gender_data, mapping = aes( x = year, y = people, fill = Population)) +
geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Male vs Female Total US Prison Population from the year 2003", x = "Year", y = "Total US Prison Population")
