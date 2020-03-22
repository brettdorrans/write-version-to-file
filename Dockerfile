# Container image that runs your code
FROM alpine:3.10

# Install git package
#RUN apt-get update && apt-get install -y --no-install-recommends -y git
RUN apk  add --no-cache git sed

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
