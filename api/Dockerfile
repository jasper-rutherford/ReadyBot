# Use an official Golang image for putting the Go binary together
FROM golang:1.26-alpine AS builder

# Set working dir
WORKDIR /app

# Copy go.mod (and go.sum later) and install dependencies
COPY go.mod ./
RUN go mod download

# Copy the rest of the code
COPY . .

# Compile it to a binary named "server"
RUN go build -o server .

# Use a smaller image for the final container
FROM alpine:latest

# Set the working dir for the final container
WORKDIR /root/

# Copy the binary over from the builder stage
COPY --from=builder /app/server .

# Set the entrypoint to the server executable
CMD ["./server"]