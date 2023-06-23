# Use an official Node.js runtime as the base image
FROM node:8-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the application code to the working directory
COPY . .

# Build the React app
RUN npm run build



# Expose the desired port (change this to the port your React app is using)
EXPOSE 9000

# Start the application
CMD ["npm","run", "serve:dev"]
