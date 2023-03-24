#! /bin/bash
set -x

TalkDir="talks/"

rm -rf dist
mkdir dist
for talk in "${TalkDir}"*
do
  cd "${talk}" || exit
  npm ci && npm run build -- --base "${talk}" --out "../../dist/${talk:${#TalkDir}}"
  cd - || exit
done
