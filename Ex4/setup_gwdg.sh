#!/bin/bash
set -e

# Define the environment name
ENV_NAME="gml_env"

# Check if the environment already exists and remove it if so
if [ -d "$ENV_NAME" ]; then
    echo "Removing existing virtual environment: $ENV_NAME"
    rm -rf "$ENV_NAME"
else
    echo "No existing virtual environment found."
fi


module load anaconda3
# Create a new virtual environment named gml_env
conda create -n "$ENV_NAME" python=3.10 --override-channels -c defaults -y
# Activate the virtual environment
source activate "$ENV_NAME"



# Install packages
conda install pytorch==2.2.0 torchvision==0.17.0 torchaudio==2.2.0 pytorch-cuda=12.1 -c pytorch -c nvidia -y --override-channels -c defaults

pip install -r requirements.txt
