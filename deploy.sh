#!/bin/bash

jekyll build
aws s3 sync ./_site s3://jakelaney.com --delete

