# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all files
COPY . .

# Build (optional for TS or production builds)
RUN npm run build

# Expose backend port
EXPOSE 4000

# Start the server
CMD ["node", "dist/server.js"]
