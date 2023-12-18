
# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

RUN mkdir /app/public
COPY script/ /app/script
COPY data.zip /app/data.zip

# Install dependencies
RUN npm install

RUN yarn && yarn seed && yarn develop

# Copy the rest of the application code to the working directory
COPY . .

# Expose a port for the application to listen on
EXPOSE 1337

# Start the application
CMD [ "npm", "start" ]
