# Use official Node.js image
FROM node:14

# Create app directory
WORKDIR /coral

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the Coral Talk files into the container
COPY . .

# Expose port 5000
EXPOSE 5000

# Run Coral Talk
CMD ["npm", "start"]
