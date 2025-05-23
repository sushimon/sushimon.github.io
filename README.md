# Personal Website - Source Code

This repository contains the source code for deploying my personal website. The site can be found [here](https://sushimon.github.io).

This was developed with [Pelican](http://docs.getpelican.com/en/stable/) using the [Flex](https://github.com/alexandrevicenzi/Flex) theme.


## Running website locally

You can choose to first create a virtual environment to install the required packages to using ```pip install -r requirements.txt```. Afterwards, you can run ```make devserver``` to generate the HTML and host the website locally to the given `SITEURL`.


## Deploying the website

After cloning the repository, you can utilize [GitHub Actions](https://github.com/features/actions) and the included workflow to automatically update the website upon new commit. You can also utilize the included `deploy.sh` script to essentially do the same. 