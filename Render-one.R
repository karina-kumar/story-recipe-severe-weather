library(quarto)


quarto_render(
  input = "04-AnalysisTemplate.qmd",
  output_file = "Travis.html",
  execute_params = list(region = "TRAVIS")
  
)
