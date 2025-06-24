FROM alpine:latest

# Install dependencies
RUN apk add --no-cache libc6-compat

# Set working directory
WORKDIR /app

# Copy files
COPY pocketbase ./pocketbase
COPY pb_data ./pb_data

# Make sure binary is executable
RUN chmod +x ./pocketbase

# Expose correct PocketBase port
EXPOSE 8090

# Run PocketBase server
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]