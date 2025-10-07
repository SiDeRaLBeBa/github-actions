# Use Node 20 as the base image
FROM node:20

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci

# Copy the rest of the app
COPY . .

# Build the project (optional if you have a build step)
RUN npm run build

# Expose a port (change if your app uses a different one)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
