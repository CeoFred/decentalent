.PHONY: build
build:
	go generate ./...
	go build -o ./bin/decentalent ./cmd/decentalent/main.go

start-dev:
	@echo "Starting dev server"
	@air -c ./.air.toml
	@echo "Dev server started"