FROM golang:1.23-bullseye AS builder

# Get dbmate source and build it
RUN git clone https://github.com/amacneil/dbmate.git /dbmate && \
    cd /dbmate && \
    go build -o /dbmate-built/dbmate .

# Final runtime container
FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends postgresql-client ca-certificates && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy the built dbmate binary
COPY --from=builder /dbmate-built/dbmate /usr/local/bin/dbmate
RUN chmod +x /usr/local/bin/dbmate && /usr/local/bin/dbmate --version

# Copy migration script
COPY migrate.sh /migrate.sh
RUN chmod +x /migrate.sh

ENTRYPOINT ["/migrate.sh"]

