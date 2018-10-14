FROM golang:latest
MAINTAINER Randy Stauner <randy@magnificent-tears.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
# cli tests
    bats \
# packaging releases
    zip \
  && rm -rf /var/lib/apt/lists/*

RUN go get -u \
    github.com/mitchellh/gox \
    golang.org/x/lint/golint \
  && true

CMD ["/bin/bash"]
