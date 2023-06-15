#!/bin/bash

echo "This is a one-time installation and setup of the Python and Quarto environments for this NWP course."

# Create a bin directory in the user's home directory
mkdir ~/.local/bin

# Download and extract Quarto CLI
cd ~/.local/bin
wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.2.313/quarto-1.2.313-linux-rhel7-amd64.tar.gz
tar -xzvf quarto-1.2.313-linux-rhel7-amd64.tar.gz

# Create a symbolic link to Quarto CLI
ln -s quarto-1.2.313/bin/quarto quarto

# Add Quarto CLI to the PATH environment variable
echo "export PATH=\$PATH:~/.local/bin" >> ~/.bashrc
source ~/.bashrc

# Setup R environment
cp -f ~/M1_SU2023/Week1/setup.Rprofile ~/.Rprofile
# Copy a script into /.local/bin that will launch Rstudio with the pre-installed python
cp ~/M1_SU2023/Week1/launchstudio.sh ~/.local/bin

# Make the script executable
chmod +x ~/.local/bin/launchstudio.sh
# Create a symbolic link
ln -s launchstudio.sh launchstudio

# Install R packages to run Python
module --force purge
module load rstudio 
module load r/4.1.0
export INSTALL_DIR="$HOME/R/4.1.0-gcc-11.2.0-yaooqbd"
export R_LIBS="${INSTALL_DIR}:${R_LIBS}"
Rscript -e "install.packages('Rcpp', lib='~/R/4.1.0-gcc-11.2.0-yaooqbd', repos='https://cran.rstudio.com/')"
Rscript -e "install.packages('RcppTOML', lib='~/R/4.1.0-gcc-11.2.0-yaooqbd', repos='https://cran.rstudio.com/')"
Rscript -e "install.packages('reticulate', lib='~/R/4.1.0-gcc-11.2.0-yaooqbd', repos='https://cran.rstudio.com/')"

# Create directories for NWP course
mkdir ~/NWP1
mkdir ~/NWP1/Week1
mkdir ~/NWP1/Week2
mkdir ~/NWP1/Week3
mkdir ~/NWP1/Week4
mkdir ~/NWP1/Week5
mkdir ~/NWP1/Capstone

# Load MetPy environment and set kernel for Jupyter Notebook
module purge
module use /anvil/projects/x-ees230003/etc/modules
module load conda-env/MetPy-py3.8.8
conda-env-mod kernel -p $PROJECT/apps/MetPy

# Print messages indicating successful installation/setup
echo "Quarto CLI installed successfully!"
echo "To Use the Python MetPy environment in the future, type the following commands:"
echo "module use /anvil/projects/x-ees230003/etc/modules"
echo "module load conda-env/MetPy-py3.8.8"
echo "Or, select Python (My MetPy Kernel) in the Jupyter Notebook"

