#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(tidyverse)

storms <- readRDS("app01/Untitled/01-storm-data.rds")
# Define UI for application that draws a histogram
ui <- page_sidebar(
  title = "Title Bar",
  sidebar = sidebar(
    card(
    card_header("Select box"),
    selectInput(
      "select",
      label = "Select option",
      choices = list(storms[c(EVENT_TYPE)]),
      selected = 1)
  )),
  tableOutput()
)

# Define server logic 
server <- function(input, output) {
  
}


# Run the application 
shinyApp(ui = ui, server = server)
