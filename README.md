# docker-hugo-builder
Simple Image to build static Websites with Hugo.

Simply build the image:
```

docker build -f Dockerfile -t hugo-builder .

```

Then you can use the hugo-builder-image to generate hogo static content in your own Dockerfile, e.g.

```
FROM hugo-builder AS build-env

RUN mkdir /code
WORKDIR /code
COPY code /code

RUN hugo

FROM nginx
WORKDIR /usr/share/nginx/html
COPY --from=build-env /code/public /usr/share/nginx/html
...
```
