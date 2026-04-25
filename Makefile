.PHONY: dev

HUGO_VERSION := v0.91.2
HUGO := $(CURDIR)/.bin/hugo

dev: $(HUGO)
	cd _dev && $(HUGO) server --bind 127.0.0.1 --port 1313 --themesDir themes

$(HUGO):
	GOBIN=$(CURDIR)/.bin go install -tags extended github.com/gohugoio/hugo@$(HUGO_VERSION)
