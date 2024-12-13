FROM node:20.15.0-alpine

# Set the working directory in the container
WORKDIR /

RUN apk add dotnet9-runtime

# Copy the rest of the application code to the container
COPY ./tmp/llmadapter ./llmadapter

# Set the working directory in the container
WORKDIR /llmadapter

RUN ls -la ./node_modules/onnxruntime-node/bin/napi-v3/linux/x64//libonnxruntime.so.1
# Expose the port the app runs on
EXPOSE 8079

# Run the server
CMD ["npm", "run", "server"]
