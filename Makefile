install:
	npm ci

rm-cache:
	rm -rf .cache

rm-dist:
	rm -rf dist

lint:
	npx eslint --fix ./src/scripts

pretty:
	npx prettier --write ./src/scss && npx prettier --write ./src/scripts

test:
	npx jest

test-coverage:
	npx jest --coverage --coverageProvider=v8

server: rm-cache rm-dist
	npx parcel src/*.html --port 1234

build-dev: rm-cache rm-dist
	npx parcel build src/*.html --out-dir dist/  --no-minify --no-cache --public-url ./

build-prod: rm-cache rm-dist
	npx parcel build src/*.html --out-dir dist/ --no-cache --public-url ./


