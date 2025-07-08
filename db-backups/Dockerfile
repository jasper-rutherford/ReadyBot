FROM alpine

# Install necessary packages
RUN apk add --no-cache postgresql-client rclone bash coreutils

# Clone the backup script into the container
COPY backup.sh /backup.sh
RUN chmod +x /backup.sh