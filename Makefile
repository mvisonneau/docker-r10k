ENVIRONMENT ?= "production"

deploy:
	r10k deploy environment ${ENVIRONMENT} -v
	r10k deploy module -e ${ENVIRONMENT} -v

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: deploy help
.DEFAULT_GOAL := help
