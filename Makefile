all:
	docker build -t rwstauner/golang-release .

test:
	git --version
	make --version
	bash --version
	bats --version
	zip -v
	which gox
	which golint
