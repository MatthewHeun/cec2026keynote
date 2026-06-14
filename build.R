# This script builds the _quarto.yml
# file for this book.
# Eventually, I will turn this into a 
# function with paths as arguments
# in _theme.
# Then I will call the function from this file
# with appropriate files referenced.

library(yaml)

# common_navbar <- yaml::yaml.load_file("_theme/common-navbar.yml")
# # footer <- yaml.load_file("_theme/common-footer.yml")

# quarto_yml_template <- yaml::yaml.load_file("_quarto-template.yml")

# quarto_yml <- quarto_yml_template
# quarto_yml$book <- common_navbar

# # website$website$`page-footer` <- footer

# quarto_yml |> 
#   yaml::write_yaml(file = "_quarto-trial.yml")

file.path("_theme", "R", "build-quarto-yml.R") |> 
  source()

file.path("_quarto-template.yml") |> 
  write_quarto_yml()
