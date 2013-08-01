#!/bin/bash

te=$1

git add .
git add -A
git commit -m "$te"
git push