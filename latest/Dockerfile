# Generated.

FROM golang:latest
MAINTAINER Randy Stauner <randy@r4s6.net>

RUN apt-get update && apt-get install -y --no-install-recommends \
# cli tests
    bats \
    gnupg \
# packaging releases
    zip \
  && rm -rf /var/lib/apt/lists/*

RUN go get -u \
    github.com/mitchellh/gox \
    golang.org/x/lint/golint \
  && cp /go/bin/* /usr/local/bin/

CMD ["/bin/bash"]
