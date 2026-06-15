#!/usr/bin/env bash

# Build will fail if any command below fails.
set -e

Rscript build-quarto-yml.R
quarto render