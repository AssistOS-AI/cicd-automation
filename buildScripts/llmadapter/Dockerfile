FROM node:20.15.0-alpine

# Set the working directory in the container
WORKDIR /

# Copy the rest of the application code to the container
COPY ./tmp/llmadapter ./llmadapter

# Set the working directory in the container
WORKDIR /llmadapter

RUN ls -la ./node_modules
# Expose the port the app runs on
EXPOSE 8079

# Run the server
CMD ["npm", "run", "server"]
