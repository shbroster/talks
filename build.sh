#! /bin/bash
set -x

rm -rf dist
mkdir dist

for talkDir in $(ls talks/)
do
  cd "talks/${talkDir}"
  npm run build
  mkdir "../dist/${talkDir}"
  mv dist "../dist/${talkDir}"
  cd -
done
