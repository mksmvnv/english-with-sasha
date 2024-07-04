WORKDIR = ./core

.PHONY = all lint run

all: lint run

lint:
	poetry run black $(WORKDIR)

run:
	poetry run python3 $(WORKDIR)/app.py

