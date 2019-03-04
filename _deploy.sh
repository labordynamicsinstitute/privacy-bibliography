#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "schmutte@uga.edu"
git config --global user.name "Ian Schmutte"

#git clone -b gh-pages https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git book-output
mkdir book-output
cd book-output
git init
cp -r ../_book/* ./
git add --all *
git commit -m"Update the book" || true
git push --force --quiet "https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}" master:gh-pages 
#git push -q origin gh-pages
