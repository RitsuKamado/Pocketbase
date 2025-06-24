FROM alpine:latest

# Install dependencies
RUN apk add --no-cache libc6-compat

# Copy files
WORKDIR /app
COPY pocketbase .
COPY pb_data ./pb_data

# Expose port and run PocketBase
EXPOSE 8080
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8080"]