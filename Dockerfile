FROM google/cloud-sdk:alpine

RUN apk --update add openjdk8
RUN gcloud components install app-engine-java

# Fix java.io.FileNotFoundException: /usr/lib/libnss3.so
# # https://github.com/docker-library/openjdk/issues/289
RUN apk add --no-cache nss
