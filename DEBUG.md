# Debugging

Since for us, Travis and Docker were all new, here's some basic hints on local debugging.

## Docker

You need docker. Find it.

## Rocker

You need at least the rocker/verse image. Download it as

```
docker pull rocker/verse
```

We probably should lock it into a specific version, but I could not find what Travis uses, so I just went with the latest.

## Debugging
So to interactively debug the `bookdown` process, I did the following:

```
docker run -it --rm  -v $(pwd):/documents rocker/verse /bin/bash
```

This gives me a shell in the docker container. I can then do things like
```
cd /documents
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
```

Outside of the docker environment, I can now navigate to the `_book/index.html`  and view the generated website.
