# This script builds the _quarto.yml
# file for this book.
# Eventually, I will turn this into a 
# function with paths as arguments
# in _theme.
# Then I will call the function from this file
# with appropriate files referenced.

library(yaml)

file.path("_theme", "R", "build-quarto-yml.R") |> 
  source()

file.path("_quarto-template.yml") |> 
  write_quarto_yml()
