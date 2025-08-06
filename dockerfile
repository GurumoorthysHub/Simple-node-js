FROM node

WORKDIR /app

# Copy package.json files first for better layer caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Then copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
