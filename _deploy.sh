<<<<<<< HEAD
#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "adamrawles@hotmail.co.uk"
git config --global user.name "Adam Rawles"

git clone -b website-upload https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git book-output
cd book-output
cp -r ../docs/* ./
  git add --all *
  git commit -m"Updated CV" || true
=======
#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "adamrawles@hotmail.co.uk"
git config --global user.name "Adam Rawles"

git clone -b wesbite-upload https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git book-output
cd book-output
cp -r ../docs/* ./
  git add --all *
  git commit -m"Updated CV" || true
>>>>>>> parent of 5ada849... typo
git push -q origin website-upload