#!/bin/sh

set -ev

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
Rscript -e "rmarkdown::render('LICENSE.Rmd', 'html_document', '_book/license.html')"
# Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"

