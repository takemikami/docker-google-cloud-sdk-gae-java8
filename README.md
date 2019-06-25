OpenJDK8 + Google Cloud SDK App Engine Component
---

Docker image  
OpenJDK8 + Google Cloud SDK App Engine Component

This container is used for ci server.  
Skip install openjdk8 and appengine component, and build time is shorter.

see.
- https://hub.docker.com/r/google/cloud-sdk/
- https://github.com/GoogleCloudPlatform/cloud-sdk-docker

# Getting started

## CircleCI

put this image name to ``.circleci/config.yml``.

```
version: 2
jobs:
  build:
    docker:
      - image: takemikami/google-cloud-sdk-gae-java8:latest
```

## check image at local PC

view gcloud command usage.

```
$ docker pull takemikami/google-cloud-sdk-gae-java8
$ docker run -t takemikami/google-cloud-sdk-gae-java8 gcloud --version
```
