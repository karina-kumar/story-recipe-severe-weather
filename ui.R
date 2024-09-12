# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)

library(shiny)
library(bslib)
library(tidyverse)

storms <- read_rds("data-processed/02-storm-data.rds")

fluidPage(
  titlePanel("Basic DataTable"),

  selectInput( 
    "select", 
    "Select options below:", 
    list("TRAVIS"), 
    multiple = TRUE 
  ),
  # Create a new row for the table.
  DT::dataTableOutput("table")
)

