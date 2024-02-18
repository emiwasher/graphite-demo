#!/bin/bash
# Ensure this script fails if anything errors
set -e -f
set -x -o pipefail

VERSION=${{ (git tag -l --sort=-v:refname | head -n 1) }}
TAGS=${{ (git for-each-ref --format="%(taggerdate) | %(refname) | %(contents:subject)" --sort=-taggerdate --count=10 refs/tags) }}
echo "${TAGS}"
#echo "${VERSION}"
