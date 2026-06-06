#!/usr/bin/env bash
# exit on error
set -o errexit

# Install dependencies
npm install

# Ensure the Puppeteer cache directory exists
export PUPPETEER_CACHE_DIR=/opt/render/.cache/puppeteer
mkdir -p $PUPPETEER_CACHE_DIR

# Install Puppeteer and download Chrome
npx puppeteer browsers install chrome
