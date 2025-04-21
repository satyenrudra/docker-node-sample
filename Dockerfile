# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the app code
COPY . .

# Expose port and define start command
EXPOSE 3000
CMD [ "npm", "start" ]
