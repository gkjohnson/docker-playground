# Start with python and build up
# node installation
FROM python:2.7-slim

# Create 'app' directory and move
# cwd contents into it
WORKDIR /app
ADD . /app

# Install node and npm
# This takes a long time. Best to start with
# existing image
RUN apt-get update && apt-get install -y nodejs npm

# Install server packages
WORKDIR /app/server
RUN npm install

# Expose port that the server runs on
EXPOSE 9080

# Node is referenced as `nodejs` here
# Node 0.10.x is installed
CMD ["nodejs", "index.js"]