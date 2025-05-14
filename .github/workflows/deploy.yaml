# This is a basic workflow to help you get started with Actions

name: Deploy website

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" branch
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v4
      - name: Set up Python 3.11
        uses: actions/setup-python@v5
        with:
          python-version: '3.11'
      - name: Install dependencies
      run: |
        python -m pip install --upgrade pip
        if [ -f requirements.txt ]; then pip install -r requirements.txt; fi

      # Runs a set of commands using the runners shell
      - name: Run a multi-line script
        run: |
          pelican content -o output -s publishconf.py

          # Use sed to replace the multiline string for each page
          old_text="<p>\&copy; ([0-9]+) </p>"
          new_text="<p>\&copy; \1 Richard Shi </p>"
          sed -E -i "s#${old_text}#${new_text}#g" output/index.html
          
          for file in output/pages/*.html; do
              sed -E -i "s#${old_text}#${new_text}#g" "$file"
          done
