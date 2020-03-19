# Docker Best Practices
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices

FROM google/cloud-sdk:alpine

RUN apk --no-cache add openjdk8
RUN gcloud components update \
    && gcloud components install \
        app-engine-java \
        pubsub-emulator
