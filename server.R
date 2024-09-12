# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)
library(tidyverse)

storms <- read_rds("data-processed/02-storm-data.rds")

function(input, output) {

  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- storms
    if (input$man != "All") {
      data <- data[data$manufacturer == input$man,]
    }
    if (input$cyl != "All") {
      data <- data[data$cyl == input$cyl,]
    }
    if (input$trans != "All") {
      data <- data[data$trans == input$trans,]
    }
    data
  }))

}
