#!/bin/bash

cd /Users/jacoblaney/code/portfolio/_site
aws s3 sync . s3://jakelaney.com
