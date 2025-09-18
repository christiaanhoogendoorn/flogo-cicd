#!/bin/bash

# Install Flogo CLI if not already installed
if ! command -v flogo &> /dev/null
then
    echo "Flogo CLI not found. Installing..."
    go get -u github.com/TIBCOSoftware/flogo-cli
fi

# Navigate to the Flogo project directory
cd /path/to/your/flogo/project

# Run the Flogo build command
flogo build

# Move the resulting executable to a designated artifacts directory
mv ./bin/your-executable-name /path/to/artifacts/
