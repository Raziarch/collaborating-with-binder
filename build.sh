#!/bin/bash

# Checks if the environment collab-binder exists, and deletes if so.
# Then installs from environment.yml

if conda info --envs | grep -q collab-binder; then
    conda env remove --name collab-binder
fi

conda env create -f environment.yml