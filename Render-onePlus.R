library(quarto)
library(tidyverse)

region <- c("HARRIS", "JEFFERSON", "LIBERTY", "CHAMBERS", "HARDIN", "GALVESTON", "ORANGE")

reports <- tibble(
  input = "04-AnalysisTemplate.qmd",
  output_file = str_glue("{region}.html"),
  execute_params = map(region, ~list(region = .))
  
)

pwalk (reports, quarto_render)