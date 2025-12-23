#!/usr/bin/env bash
set -o errexit  # Exit on any error

# Optional: Update submodules if using them
git submodule update --init --recursive

# Download a recent Hugo extended version (choose latest or specific)
HUGO_VERSION="0.153.1"  # Check https://github.com/gohugoio/hugo/releases for the newest
wget -q https://github.com/gohugoio/hugo/releases/download/v\( {HUGO_VERSION}/hugo_extended_ \){HUGO_VERSION}_linux-amd64.tar.gz
tar -xzf hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz hugo
chmod +x hugo

# Build the site
./hugo --gc --minify
