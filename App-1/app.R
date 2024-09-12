



#Define UI ----
ui <- fluidPage(
    
    # Copy the line below to make a select box 
    selectInput("select", label = h3("Select box"), 
                choices = tx_counties, 
                multiple = TRUE),
    
    dataTableOutput(outputId = "stormtable")
  )

# Define server logic ----
server <- function(input, output) {
  output$stormtable <- DT::renderDataTable({
    if (is.null(input$select) || length(input$select) == 0) {
      # No selection made, return the full dataset
      filtered_data <- storms
    } else {
      # Filter the dataset based on selections
      filtered_data <- storms %>%
        filter(location %in% input$select)
    }
    
    # Return the datatable
    DT::datatable(filtered_data)
  })
}

# Run the app ----
shinyApp(ui = ui, server = server)