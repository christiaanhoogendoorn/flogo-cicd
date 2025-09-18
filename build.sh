#!/bin/bash

# Navigate to the directory where you want to initialize the Go module
cd /opt/go| exit

# Initialize Go module if not already done
if [ ! -f go.mod ]; then
    go mod init flogo
fi

# Install Flogo CLI
if ! command -v flogo &> /dev/null; then
    echo "Flogo CLI not found. Installing..."
    go install github.com/TIBCOSoftware/flogo-cli@latest
fi

# Run the Flogo build command
flogo build

# Move the resulting executable to a designated artifacts directory
mv ./bin/your-executable-name /path/to/artifacts/
