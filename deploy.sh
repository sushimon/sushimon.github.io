#!/bin/bash
pelican content -o output -s publishconf.py

# Use sed to replace the multiline string for each page
old_texts=( "Welcome!(\r\n|\r|\n)(\s+)</a>" "<p>\&copy; ([0-9]+) </p>" )
new_texts=( "Home</a>" "<p>\&copy; \1 Richard Shi </p>" )

for file in $(find output -name "*.html"); do
    for i in "${!old_texts[@]}"; do
        sed -z -E -i "s#${old_texts[$i]}#${new_texts[$i]}#g" "$file"
        sed -z -E -i "s#${old_texts[$i]}#${new_texts[$i]}#g" "$file"
    done
done

ghp-import output -b gh-pages
git push origin gh-pages