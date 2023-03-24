#! /bin/bash
set -x

rm -rf dist
mkdir dist

for talkDir in $(ls talks/)
do
  cd "talks/${talkDir}"
  npm ci
  npm run build -- --base "talks/${talkDir}/" --out "../../dist/${talkDir}"
  # mkdir "../dist/${talkDir}"
  # mv dist "../dist/${talkDir}"
  cd -
done
