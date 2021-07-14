mustache=node_modules/.bin/mustache

all: index.html

index.html: data.json index.mustache.html | $(mustche)
	$(mustache) $^ >$@

data.json: downloaddata
	./downloaddata

$(mustache):
	npm ci

.PHONY: clean

clean:
	rm -f index.html data.json
