# Use Node.js base image
FROM node:18

# Set the working directory
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/Volttaik/SkyStorm-MD.git .

# Install dependencies
RUN yarn install

# Expose any necessary ports (optional)
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
