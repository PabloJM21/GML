#!/bin/bash
set -e

# Load Python module (use the appropriate version available on the system)
module load python/3.10.13  # Replace with the available version

# Create a virtual environment named gml_env
python -m venv gml_env

# Activate the virtual environment
source gml_env/bin/activate

# Install the required packages with pip
pip install torch==2.2.0 torchvision==0.17.0 torchaudio==2.2.0 tqdm==4.66.2 requests==2.31.0 transformers==4.38.2 tensorboard==2.16.2 tokenizers==0.15.1

# Install additional packages from requirements.txt
pip install -r requirements.txt
