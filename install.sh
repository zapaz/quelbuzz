#! /bin/bash

# Current path
currentPath=$(realpath ./)

# Install Meteorjs
curl https://install.meteor.com/ | sh
export PATH=/home/bas/.meteor:$PATH

# Install demeteorizer
cd ~/ && npm install demeteorizer

# Go back to our project
cd "$currentPath"

# Note: When using "meteorhacks:npm"
# to prevent the error: "unknown package: npm-container"
# (described in https://github.com/meteorhacks/npm/issues/49)
# uncomment the two following lines:
#meteor remove npm-container
#meteor run

# demeteorize the app
~/node_modules/.bin/demeteorizer -a "my_app" -o my_app/

# Go inside our demeteorized app to install modules
cd my_app/

# Install modules
npm install

