# Use a Node.js base image
FROM node:18-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Set environment variables
ENV NODE_ENV=production
#ENV DATABASE_URL=your_database_url

# Copy the rest of your application code
COPY . .

# Expose the port your application will listen on (replace 3000 with your desired port)
EXPOSE 3000

# Define the command to start your application
CMD ["node", "app.js"]
