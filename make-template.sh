#!/usr/bin/env bash

d=$(date +%e)
case $d in
    1?) d=${d}th ;;
    *1) d=${d}st ;;
    *2) d=${d}nd ;;
    *3) d=${d}rd ;;
    *)  d=${d}th ;;
esac

til_date=$(date +"%A, %B ${d}, %Y  %n%Y-%m-%d  ")
read -p "Enter path: " til_path
read -p "Enter subject: " til_subject

if test -d "./${til_path}" && test -x "./${til_path}" ; then
  echo "Directory exists."
else 
  echo "Creating directory ./${til_path}"
  mkdir "./${til_path}"
fi

# normalize subject to the filename
til_subject_normalized=${til_subject// /_}
til_subject_normalized=$(echo "${til_subject_normalized}" | tr '[:upper:]' '[:lower:]')

echo "Creating subject file ${til_path}/${til_subject_normalized}.md"
touch "./${til_path}/${til_subject_normalized}.md"

cat >"./${til_path}/${til_subject_normalized}.md" <<EOL
# ${til_subject}

## Context
REPLACE ME

## TIL
REPLACE ME

## Sources and References
* 

## Date
${til_date}
EOL

echo "Done!"
