# This script builds the _quarto.yml file
# appropriate for the cec2026keynote website. 

library(yaml)

# Load the function in the write-quarto-yml-function.R file.
source(file.path("_theme", "scripts", "write-quarto-yml-function.R"))

# Using the quarto-template.yml file, 
# stitch together the
# _quarto.yml file.
write_quarto_yml(base_quarto_yml_path = "_quarto-template.yml", 
                 navbar_path = file.path("assets", "quarto-yml", "navbar.yml"))
