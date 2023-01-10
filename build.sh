#!/bin/bash

cwd=$(dirname "$0")
versions_dir="${cwd}/versions"
mod_info=$(cat "${cwd}/info.json")
build_release=$(echo "${mod_info}" | jq -r '.version')
build_name=$(echo "${mod_info}" | jq -r '.name')

build_zip="${versions_dir}/${build_name}.${build_release}.zip"

echo "Build Name: ${build_name}"
echo "Build Release: ${build_release}"
echo "Zipping Build to ${build_zip}"


zip -r "$build_zip" "$cwd" -x "$versions_dir"

