#Load Libraries
library(ggplot2)
library(plotly)
library(dplyr)
library(bslib)

#Load data set
climate_df <- read.csv("https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv", stringsAsFactors = FALSE)

# line plot of co2 over time by country
server <- function(input, output) {
  
  output$climate_plot <- renderPlotly({
    # Filter climate_df for just countries selected in the check box    
    filtered_df <- climate_df %>% 
      filter(country %in% input$country_selection) %>%
      # Change date range based on years selected in slider range
      filter(year >= input$year_selection[1] & year <= input$year_selection[2])

    # line plot of co2 over time by country
    co2_plot <- ggplot(data = filtered_df) +
      geom_line(mapping = aes(x = year, y = co2, color = country)) +
      labs(title = "co2 production/emissions from countries V.S time in years",
         x = "Year", y = "co2")
    
    return(co2_plot)
  })
}


