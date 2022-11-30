#Summary Information
# 5 calculated values based on "us-prison-pop.csv" data set

#Libraries
library(dplyr)
library(ggplot2)
library(tidyverse)
library(maps)

#add Data Frame
usprisonpop_df <- read.csv("us-prison-pop.csv")

#Save into a list
summary_info <- list()

#Number of Rows
summary_info$rows <- nrow(usprisonpop_df)

#Number of columns in the data set
summary_info$columns <- ncol(usprisonpop_df)

#total us prison population since 2003
summary_info$total_prison_pop <- usprisonpop_df %>%
  filter(year >= 2003, na.rm = TRUE) %>% 
  summarize(sum_total_pop = sum(total_pop)) %>% 
  pull(sum_total_pop)

#Average/ mean Black Incarceration per state (State, pick a state)
avg_black_prison_pop_year <- usprisonpop_df %>% 
  group_by(state) %>% 
  summarize(mean = mean(black_prison_pop, na.rm = TRUE))

#Average/ mean male Incarceration per state (State, pick a state)
avg_male_prison_pop <-usprisonpop_df %>% 
  group_by(state) %>% 
  summarize(mean = mean(male_prison_pop, na.rm = TRUE))

#State with the highest incarceration / population (All)
summary_info$states_highest <- usprisonpop_df %>% 
  filter(total_pop == max(total_pop, na.rm = TRUE)) %>% 
  pull(state)

#States with the lowest incarceration/ population (All)
summary_info$states_lowest <- usprisonpop_df %>% 
  group_by(state) %>% 
  summarize(mean_total_pop = mean(total_pop, na.rm = TRUE)) %>% 
  filter(mean_total_pop == min(mean_total_pop, na.rm = TRUE)) %>% 
  pull(state)







  
