#!/bin/bash
pelican content -o output -s publishconf.py

# Use sed to replace the multiline string for each page
old_text1="Welcome!(\r\n|\r|\n)(\s+)</a>"
new_text1="Home</a>"
old_text2="<p>\&copy; ([0-9]+) </p>"
new_text2="<p>\&copy; \1 Richard Shi </p>"
sed -z -E -i "s#${old_text1}#${new_text1}#g" output/index.html
sed -z -E -i "s#${old_text2}#${new_text2}#g" output/index.html

for file in output/pages/*.html; do
    sed -z -E -i "s#${old_text1}#${new_text1}#g" "$file"
    sed -z -E -i "s#${old_text2}#${new_text2}#g" "$file"
done

ghp-import output -b gh-pages
git push origin gh-pages