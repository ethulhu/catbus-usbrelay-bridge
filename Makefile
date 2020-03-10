.PHONY: build test deb clean

VERSION ?= "$(shell date --utc +%Y%m%d.%H%M)-1"

all: deb

build:
	@true

test: build
	@true

manifest: test
	find etc lib usr > $@

deb: build manifest
	bpkg-build . $(VERSION)

clean:
	rm -rf build manifest *.deb *.deb.dat
