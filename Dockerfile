# Docker Best Practices
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices

FROM google/cloud-sdk:alpine

RUN apk --no-cache add openjdk8 nodejs npm
RUN gcloud components update \
    && gcloud components install \
        beta \
        app-engine-java \
        pubsub-emulator
