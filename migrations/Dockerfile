FROM alpine

# Install dbmate + postgres client for connecting
RUN apk add --no-cache postgresql-client bash curl && \
    curl -fsSL https://github.com/amacneil/dbmate/releases/latest/download/dbmate-linux-amd64 > /usr/local/bin/dbmate && \
    chmod +x /usr/local/bin/dbmate


# Copy the migration entry script into the image
COPY migrate.sh /migrate.sh
RUN chmod +x /migrate.sh

ENTRYPOINT ["/migrate.sh"]
