#!/bin/bash
pelican content -o output -s publishconf.py

# Use sed to replace the multiline string for each page
old_text="<p>\&copy; ([0-9]+) </p>"
new_text="<p>\&copy; \1 Richard Shi </p>"
sed -E -i "s#${old_text}#${new_text}#g" output/index.html

for file in output/pages/*.html; do
    sed -E -i "s#${old_text}#${new_text}#g" "$file"
done

ghp-import output -b gh-pages
git push origin gh-pages