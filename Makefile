.DEFAULT_GOAL := build

.PHONY := install
install:
	cargo install mdbook

build: src/*.md css/*.css
	@if ! which mdbook >/dev/null; then \
	  echo '`cargo install mdbook` first' 1>&2; \
	  exit 1; \
	fi
	mdbook build

.PHONY := clean-build
clean-build:
	@test -d docs && rm -r docs
	@$(MAKE) build

.PHONY := dev
dev: build
	mdbook serve
