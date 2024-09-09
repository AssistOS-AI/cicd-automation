FROM node:20.15.0-alpine

# Set the working directory in the container
WORKDIR /

# Copy the rest of the application code to the container
COPY ./tmp/llmos ./llmos

# Set the working directory in the container
WORKDIR /llmos

# Expose the port the app runs on
EXPOSE 8079

# Run the server
CMD ["npm", "run", "server"]
