# Docker Image for building, testing, and relasing golang apps

[![docker hub](https://img.shields.io/badge/docker-golang--release-blue.svg)](https://hub.docker.com/r/rwstauner/golang-release)
[![Build Status](https://travis-ci.org/rwstauner/docker-golang-release.svg?branch=master)](https://travis-ci.org/rwstauner/docker-golang-release)

Built from `golang:alpine` with additional tools installed:

- [`gox`][gox]  for cross compiling
- `make` for making
- [`bats`][bats] for testing CLI apps
- `zip`  for packaging releases

## Setup

### Docker Hub

    docker pull rwstauner/golang-release

### DIY

    git clone git@github.com:rwstauner/docker-golang-release.git
    cd docker-golang-release
    docker build -t golang-release .

## Use

    docker run -it --rm -v /some/path:/src -w /src rwstauner/golang-release make

[gox]: https://github.com/mitchellh/gox
[bats]: https://github.com/sstephenson/bats