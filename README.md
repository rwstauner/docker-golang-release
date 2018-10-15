# Docker Image for building, testing, and relasing golang apps

[![docker hub](https://img.shields.io/badge/docker-golang--release-blue.svg)](https://hub.docker.com/r/rwstauner/golang-release)
[![Build Status](https://travis-ci.org/rwstauner/docker-golang-release.svg?branch=master)](https://travis-ci.org/rwstauner/docker-golang-release)

Built from `golang` ([latest][latest] and [alpine][alpine] tags) with additional tools installed:

- [golint][golint] for finding lint
- [gox][gox] for cross compiling
- make for making
- [bats][bats] for testing CLI apps
- zip for packaging releases

## Setup

### Docker Hub

    docker pull rwstauner/golang-release

### DIY

    git clone git@github.com:rwstauner/docker-golang-release.git
    cd docker-golang-release
    make

## Use

    docker run -it --rm -v /some/path:/src -w /src rwstauner/golang-release make

[golint]: https://github.com/golang/lint
[gox]: https://github.com/mitchellh/gox
[bats]: https://github.com/sstephenson/bats
[latest]: https://github.com/rwstauner/docker-golang-release/blob/master/latest/Dockerfile
[alpine]: https://github.com/rwstauner/docker-golang-release/blob/master/alpine/Dockerfile
