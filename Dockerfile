# Node.js 14 base image
FROM node:14

# Set working directory inside container
WORKDIR /app

# Copy all application files to container's /app directory
COPY . .

# Install dependencies
RUN npm install

# Start the application
CMD ["npm", "start"]