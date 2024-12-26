# Use the official Node.js runtime as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app's files to the container
COPY . .

# Expose the port your app listens on (3000 in this case)
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]