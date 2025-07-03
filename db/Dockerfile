# Dockerfile for a custom Postgres image
FROM postgres:15

# we're copying the init scripts into the container instead of mounting them as a volume
# so that postgres doesn't do any weird permissions stuff to my db folder
# TODO(jruth): if i ever switch to using docker for development, this will change
COPY ./init/ /docker-entrypoint-initdb.d/
