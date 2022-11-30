#load libraries / packages
library(bslib)
install.packages("htmlwidgets", type = "binary")
install.packages("DT", type = "binary")

# Preview and Select a Bootswatch Theme
bs_theme_preview()

# Manually Determine a BootSwatch Theme
theme <- bs_theme(bg = "#a9e6e8", #background color
                  fg = "white", #foreground color
                  primary = "#FCC780", # primary color
)

# Preview
bs_theme_preview(theme)

