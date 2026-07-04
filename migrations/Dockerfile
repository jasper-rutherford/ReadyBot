FROM golang:1.25-bookworm AS builder

RUN curl -fsSL -o /usr/local/bin/dbmate \
    https://github.com/amacneil/dbmate/releases/latest/download/dbmate-linux-amd64 && \
    chmod +x /usr/local/bin/dbmate

FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends postgresql-client ca-certificates && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY --from=builder /usr/local/bin/dbmate /usr/local/bin/dbmate
RUN chmod +x /usr/local/bin/dbmate && /usr/local/bin/dbmate --version

COPY migrate.sh /migrate.sh
RUN chmod +x /migrate.sh

ENTRYPOINT ["/migrate.sh"]
