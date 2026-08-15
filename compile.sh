#!/usr/bin/env bash

# Build will fail if any command below fails.
# This is helpful to avoid deploying
# partially-built sites.
set -e

# Build the _quarto.yml file
Rscript scripts/build-quarto-yml.R

# Render the website with quarto
quarto render

# Preview the site on the local machine
quarto preview

