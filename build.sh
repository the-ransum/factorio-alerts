#!/bin/bash

script_name="$0"
cwd="$(basename "$(dirname "$(realpath -s ${script_name})")")"
cd ..

versions_dir="${cwd}/versions"
mod_info=$(cat "${cwd}/info.json")
build_release=$(echo "${mod_info}" | jq -r '.version')
build_name=$(echo "${mod_info}" | jq -r '.name')

build_zip="${versions_dir}/${build_name}_${build_release}.zip"

echo "Build Name: ${build_name}"
echo "Build Release: ${build_release}"
echo "Versions: ${versions_dir}"
echo "Zipping Build to ${build_zip}"

zip -r "$build_zip" "$cwd" -x "${cwd}/versions" "${cwd}/versions/*" "${cwd}/.git" "${cwd}/.git/*"

