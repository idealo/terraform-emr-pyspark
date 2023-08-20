#!/usr/bin/env bash

# Ensure the script fails on any error
set -e

# Install Miniconda
MINICONDA_URL="https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"
wget --quiet ${MINICONDA_URL} -O ~/miniconda.sh
/bin/bash ~/miniconda.sh -b -p $HOME/conda

# Initialize Conda for bash shell. This will also update the .bashrc file.
source $HOME/conda/bin/activate
conda init bash

# Update conda
conda update -n base -c defaults conda -y

# Install packages
conda install -y notebook jupyter pandas seaborn

# Update pip and install Python packages
conda install pip -y
pip install --upgrade pip
pip install findspark sklearn

# Cleanup
# rm ~/miniconda.sh
