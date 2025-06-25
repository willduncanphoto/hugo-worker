#!/usr/bin/env bash

#------------------------------------------------------------------------------
# Huge thanks to @jmooring!
#
# Source: https://github.com/jmooring/hosting-cloudflare-worker
#------------------------------------------------------------------------------

main() {

  HUGO_VERSION=0.147.2

  export TZ=America/Los_Angeles

  # Install Hugo
  echo "Installing Hugo v${HUGO_VERSION}..."
  curl -LJO https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz
  tar -xf "hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz"
  cp hugo /opt/buildhome
  rm LICENSE README.md hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz

  # Verify installed versions
  echo "Verifying installations..."
  echo Go: "$(go version)"
  echo Hugo: "$(hugo version)"
  echo Node.js: "$(node --version)"

  # https://gohugo.io/methods/page/gitinfo/#hosting-considerations
  # git fetch --recurse-submodules --unshallow

  # https://github.com/gohugoio/hugo/issues/9810
  # git config core.quotepath false

  # Build the site!
  hugo --gc --minify

}

set -euo pipefail
main "$@"