#!/usr/bin/env bash

# install conda
wget --quiet https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh \
    && /bin/bash ~/miniconda.sh -b -p $HOME/conda

echo -e '\nexport PATH=$HOME/conda/bin:$PATH' >> $HOME/.bashrc && source $HOME/.bashrc

# install packages
conda install -y notebook=5.7.* jupyter=1.0.* pandas seaborn

#install findspark
pip install --upgrade pip
pip install findspark
pip install sklearn
