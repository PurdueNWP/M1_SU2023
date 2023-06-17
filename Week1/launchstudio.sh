#!/bin/bash
# Start from a clean slate
module purge

# Set up environment modules
module use /anvil/projects/x-ees230003/etc/modules

# Load the MetPy conda environment with Python 3.8.8
module load conda-env/MetPy-py3.8.8

# Load RStudio
module load rstudio

# Open RStudio
rstudio &