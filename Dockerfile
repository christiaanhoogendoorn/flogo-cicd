# Use the official Flogo Docker image as the base
FROM flogo/flogo-docker

# # Set the working directory
# WORKDIR /app

# Copy your Flogo JSON file into the container
COPY flogo.json /app/flogo.json

# Copy the src and bin folders into the container if they exist
COPY src /app/src
COPY bin /app/bin

# Expose the necessary port
EXPOSE 3303

# Command to run the Flogo application
CMD ["flogo", "run", "/app/flogo.json"]
