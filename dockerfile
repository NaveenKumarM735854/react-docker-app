# Use Node.js as the base image
FROM node:alpine as builder

# Set the working directory in the container
WORKDIR /app

# # Install Angular CLI globally
# RUN npm install -g @angular/cli

# Copy package.json and package-lock.json to the container
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .


# Command to start Angular development server
CMD ["npm","run","dev","--","--port","3000"]

