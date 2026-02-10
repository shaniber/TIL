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
feed_date=$(date +"%a, %d %b %Y %H:%M:00 -0600")
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

echo "Updating feed.xml (remember to change <description>)"
mv feed.xml feed.xml.bak
awk -v path="${til_path}" \
    -v filename="${til_subject_normalized}" \
    -v subject="${til_subject^}" \
    -v category="${til_path^}" \
    -v feed_date=$"${feed_date}" \
    '1;/<language>en-CA<\/language>/{
printf "    <item>\n";
printf "      <title>%s: %s</title>\n", category, subject;
printf "      <description>REPLACE ME</description>\n";
printf "      <pubDate>%s</pubDate>\n", feed_date;
printf "      <dc:creator>shane doucette</dc:creator>\n";
printf "      <link>{{ site.url }}{{ site.baseurl }}/%s/%s.html</link>\n", path, filename;
printf "      <guid isPermaLink=\"true\">{{ site.url }}{{ site.baseurl }}/%s/%s.html</guid>\n", path, filename;
printf "      <category>%s</category>\n", category;
printf "    </item>\n"; }' feed.xml.bak > feed.xml

echo "Opening your editor with the new file: ./${til_path}/${til_subject_normalized}.md"
"$EDITOR" "./${til_path}/${til_subject_normalized}.md"

echo && echo "Make sure you commit everything, and push it to the repo!" && echo

