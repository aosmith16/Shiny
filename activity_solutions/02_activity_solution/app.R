# This is the app for students
     # to recreate as an in-class activity

# Load package shiny
library(shiny)

# User interface
ui = fluidPage(
     helpText("Create heatmaps of average",
              br(),
              " tree height across a stand"),
     textInput(inputId = "title",
               label = "Make a title for the plot",
               value = "Plot title"),
     sliderInput(inputId = "slide",
                 label = "Choose maximum tree size (DBH, inches)",
                 value = 30,
                 min = 10,
                 max = 50),
     selectInput(inputId = "choose",
                 label = "Select one species to plot:",
                 choices = c("Douglas-fir",
                             "Western hemlock",
                             "Bigleaf maple",
                             "Red alder") )
)

# Server function
server = function(input, output) {
     
}

# Create app object
shinyApp(ui = ui, server = server)