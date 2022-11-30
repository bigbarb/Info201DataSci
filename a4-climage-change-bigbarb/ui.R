#Load libraries
library(plotly)
library(bslib)
library(markdown)

#Source
source("server.R")
source("5-values.R")

# Load climate data
climate_df <- read.csv("https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv", stringsAsFactors = FALSE)

# Determine a BootSwatch Theme
my_theme <- bs_theme(bg = "#0b3d91", #background color
                    fg = "white", #foreground color
                    primary = "#FCC780", # primary color
)

# Update BootSwatch Theme
my_theme <- bs_theme_update(my_theme, bootswatch = "journal")

# Home page tab
intro_tab <- tabPanel(
  # Title of tab
  "Introduction",
    # Include a Markdown file!
    includeMarkdown("sample-text-intro.md"),
    p("This is a demo web app!"),
    p("Made by Brian Tran, Info 201 Spring 2022, A4: Data Applications")
)

#Sidebar panel for widgets and text
sidebar_panel_widget <- sidebarPanel(
  checkboxGroupInput(
    inputId = "country_selection",
    label = "Countries",
    choices = c("United States", "Canada","China", "France", "Mexico", "Vietnam"),
    selected = "United States"
  ),
  sliderInput(inputId = "year_selection",
              label = h3("Timeline"),
              min = min(climate_df$year),
              max = max(climate_df$year),
              sep = "",
            value = c(1860, 2020)),
)

# Put a plot in the middle of the page
main_panel_plot <- mainPanel(
  # Make plot interactive
  plotlyOutput(outputId = "climate_plot"),
  # Include a Markdown file!
  includeMarkdown("sample-text-chart.md")
)

# combine sidebar panel and main panel
climate_tab <- tabPanel(
  "Climate Visual",
  sidebarLayout(
    sidebar_panel_widget,
    main_panel_plot
  )
)


ui <- navbarPage(
  theme = my_theme,
  # Home page title
  "Climate Change Data Exploration",
  intro_tab,
  climate_tab
)
