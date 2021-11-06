#!/usr/bin/env bash

set -e

drush tome:static -y -l https://a-fro.github.io/david
rm -rf gh-pages
git clone git@github.com:a-fro/david.git gh-pages
cd gh-pages
git checkout master || git checkout -b master
cd ..
rm -rf gh-pages/*
cp -r html/david/* gh-pages/
cd gh-pages
git add .
git commit -m 'Updating gh-pages site'
git push -u origin master
