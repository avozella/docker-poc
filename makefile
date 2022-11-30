ID_CONTAINER:=$(shell docker ps -aq)
.DEFAULT_GOAL := help

clean: ## Remove all containers
	@if [ $(ID_CONTAINER) != 0 ]; then\
		docker rm -f $(ID_CONTAINER);\
	fi

run: ## Run container
	docker run --rm -d -p 8080:80 example_1:latest

build: ## Build an image
	docker build -t example_1:latest .

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'