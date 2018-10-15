SHELL = /bin/bash
IMAGE = rwstauner/golang-release
TAGS = latest alpine

all: test

build: dockerfiles
	for tag in $(TAGS); do \
		docker build -t $(IMAGE):$$tag $$tag/; \
	done

dockerfiles:
	for tag in $(TAGS); do \
		tag=$$tag packages="$$(< $$tag/packages)" \
		perl -0777 -p -e 'print "# Generated.\n\n"; s/\{\{(\w+)\}\}/$$ENV{$$1}/g' \
			< Dockerfile.template > $$tag/Dockerfile; \
	done

test: build
	for tag in $(TAGS); do \
		echo; echo "# $$tag"; \
		docker run $(IMAGE):$$tag bash -c ' go version \
			&& git --version \
			&& make --version \
			&& bash --version \
			&& bats --version \
			&& zip -v \
			&& which gox \
			&& which golint \
			'; \
	done
