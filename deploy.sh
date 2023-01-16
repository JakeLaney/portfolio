#!/bin/bash

bundle exec jekyll build
rm -rf ../portfolio-firebase/public/
mkdir ../portfolio-firebase/public/
cp -r _site/* ../portfolio-firebase/public
cd ../portfolio-firebase 
firebase deploy
