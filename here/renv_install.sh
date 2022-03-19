#!/usr/bin/env sh

docker run --rm \
    -e "RENV_PATHS_CACHE=/home/shiny/renv/cache" \
    -v /home/.cache/R/renv/cache/v5/R-4.1/x86_64-pc-linux-gnu:/home/shiny/renv/cache \
    -v `pwd`:/home/shiny/project \
    renv-test:latest Rscript -e "renv::restore(confirm = FALSE)" -e "renv::isolate()"

