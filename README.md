Alpine + Google Cloud SDK + openjdk8, appengine components
---

This container is handy for a continuous integration build environment such as CircleCI.

It skips the install of openjdk8 and appengine components to get a shorter build time.

See also:
- https://hub.docker.com/r/google/cloud-sdk/
- https://github.com/GoogleCloudPlatform/cloud-sdk-docker

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
