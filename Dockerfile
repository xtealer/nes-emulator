# Base image
FROM node:alpine

# Create destination folder with non root default user
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

# Change work directory
WORKDIR /home/node/app

# Copy app files to destionation folder
COPY ./ ./

# Default command
CMD ["node", "server.js"]
