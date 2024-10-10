# Makefile for building PDC website

# Default target
all: build

# Build PDC site
build:
	mkdocs build -f mkdocs/mkdocs.yml 
	cp -r mkdocs/site web/static/mkdocs	
	hugo --source "web"

# Runs a local server
serve:
	mkdocs build -f mkdocs/mkdocs.yml 
	cp -r mkdocs/site web/static/mkdocs
	hugo server --source "web"

serve_mkdocs:
	mkdocs serve -f mkdocs/mkdocs.yml 

public:
	python3 update_docs.py support

# Optional: Clean the site directory
clean:
	rm -rf mkdocs/site
	rm -rf web/public
	rm -rf web/static/mkdocs
