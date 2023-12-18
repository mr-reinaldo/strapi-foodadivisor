
# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

COPY pages /app/pages
COPY adapters /app/adapters
COPY components /app/components
COPY public /app/public
COPY utils /app/utils

RUN npm run build

# Copy the rest of the application code to the working directory
COPY . .

# Expose a port for the application to listen on
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]
