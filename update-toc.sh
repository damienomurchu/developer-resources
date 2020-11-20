#!/usr/bin/sh

REPO_NAME="Developer Resources"
REPO_DESCRIPTION="A list of useful developer-related resources."
SUB_FILE_DIR="resources"

echo -e "# $REPO_NAME\n" > README.md
echo -e "$REPO_DESCRIPTION\n" >> README.md

for filepath in `ls ./$SUB_FILE_DIR/*`
do
  file=`echo $filepath | cut -d "/" -f 3 | cut -d "." -f 1`
  echo "- [${file^}]($filepath)" >> README.md
done
