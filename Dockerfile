# Base image
FROM node:20

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of project
COPY . .

# Build the app
RUN npm run build

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
