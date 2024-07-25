.PHONY: all lint run

WORKDIR = ./core

all: lint run

lint:
	@echo "Code formatting..."
	@poetry run black $(WORKDIR)
	@echo "Successfully!"

run:
	@echo "Run server..."
	@poetry run python3 $(WORKDIR)/app.py


#clean:

