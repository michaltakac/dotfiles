#!/usr/bin/env bash

# Install some useful npm modules. You should have installed npm:
# brew install node

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install NVM - Node version manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
nvm install node

# Use the installed node version
nvm use node

# Yarn
brew install yarn --without-node

# upgrade npm
sudo npm install -g npm
sudo npm update -g

sudo npm install -g typescript webpack
# solidity and ethereum tools
sudo npm install -g truffle truffle-expect truffle-config web3 ethereumjs-testrpc solc
