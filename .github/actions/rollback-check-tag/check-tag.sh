#!/usr/bin/env bash

# Regex is copied from semver.org
REGEX='^(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(?:-((?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?$'

echo "${1}"

if ! (echo "${1}" | grep -i -E ${REGEX}); then
	echo "Invalid Rollback Tag: \"${TAG}\". Valid tag should match semantic versioning"
	exit 1
fi

echo "Valid Tag"



