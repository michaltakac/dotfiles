#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# some packages are only required/wanted on Mac OS X
if [ $(uname) == "Darwin" ]
	then

				# Install GNU core utilities (those that come with OS X are outdated).
				# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
				brew install coreutils
				ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
				# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
				brew install findutils
				# Install GNU `sed`, overwriting the built-in `sed`.
				brew install gnu-sed --with-default-names
				# Install Bash 4.
				# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
				# running `chsh`. To do so, run `sudo chsh -s /usr/local/bin/bash`.
				brew install bash
				brew install bash-completion2

				brew tap homebrew/completions
				brew install homebrew/completions/brew-cask-completion
				brew install homebrew/completions/bundler-completion
				brew install homebrew/completions/gem-completion
				brew install homebrew/completions/kitchen-completion
				brew install homebrew/completions/rake-completion
				brew install homebrew/completions/vagrant-completion

				# Switch to using brew-installed bash as default shell
				if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
					echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
					chsh -s /usr/local/bin/bash;
				fi;

				# Install more recent versions of some OS X tools.
				brew install vim --with-override-system-vi
				brew install macvim --env-std
				brew install grep
				brew install openssh
				brew install screen

				# Install font tools.
				brew tap bramstein/webfonttools
				brew install sfnt2woff
				brew install sfnt2woff-zopfli
				brew install woff2

				brew install dark-mode

				# command line interface for Mac App Store
				brew install mas

  fi

# Install some other useful utilities like `sponge`.
brew install moreutils
brew install mosh

# Install `wget` with IRI support.
brew install wget --with-iri

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
#brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xz

# Install other useful binaries.

# better grep
brew install ack
# better ack
brew install the_silver_searcher

#brew install exiv2
brew install git
brew install git-extras
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install webkit2png
brew install zopfli
brew install z
brew install selecta
brew install tmux
brew install gnupg
brew install gpgme

# Install password generator
brew install apg

# Install io.js
# brew install iojs

# Install generic colourizer and other tools for highlighting
brew install grc
brew install source-highlight
brew install vimpager

# Install atool - provides apack and aunpack - who wants to remember all
# zip/tar/7z/... switches?
brew install atool

# for gifify and webmify
brew install ffmpeg --with-libvpx --with-faac
brew install gifsicle

# metadata removal tool (privacy)
brew install mat
brew install entr

# some build tools (required for YouCompleteMe for example)
brew install cmake
brew install go

# Remove outdated versions from the cellar.
brew cleanup

