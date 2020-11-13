Alpine + Google Cloud SDK + OpenJDK8, appengine components
---

This container is handy for a continuous integration build environment such as CircleCI.

It allows skipping the install of [OpenJDK8](https://openjdk.java.net/projects/jdk8/) and appengine components for a faster build time.

It also includes Node.js and NPM for convience if you use JavaScript in your builds.

gcloud components:
- beta
- app-engine-java
- pubsub-emulator

See also:
- https://hub.docker.com/r/google/cloud-sdk/
- https://github.com/GoogleCloudPlatform/cloud-sdk-docker
- https://hub.docker.com/repository/docker/powerpro/google-cloud-sdk-gae-java8

# Getting started

## CircleCI

Point to this image name in ``.circleci/config.yml``.

```
version: 2
jobs:
  build:
    docker:
      - image: powerpro/google-cloud-sdk-gae-java8:latest
```

## Pull the image locally

Try out gcloud command usage.

```
$ docker pull powerpro/google-cloud-sdk-gae-java8
$ docker run -t google-cloud-sdk-gae-java8 gcloud
```

OR open a Bash shell
```
$ docker run -it --rm google-cloud-sdk-gae-java8 bash
```
