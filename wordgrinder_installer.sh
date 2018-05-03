#!/bin/bash
# Wordgrinder_installer 
# xastherion 2018

# xcode intallation --> ask for accept (please accept!) 
# ----------------------------------------------------------------------
xcode-select --install

# homebrew installation --> ask for sudoer password (please give it!
# ---------------------------------------------------------------------- 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# ninja installation
# ----------------------------------------------------------------------
brew install ninja

# install wordgrinder 
# ----------------------------------------------------------------------
git clone https://github.com/davidgiven/wordgrinder.git
cd wordgrinder
make
make install
rm -Rf wordgrinder

# put a beautiful clickable icon in desktop:
# -----------------------------------------------------------------------
echo '#!/bin/bash'>~/Desktop/wordgrinder.command
echo '~/bin/wordgrinder'>>~/Desktop/wordgrinder.command
chmod +x ~/Desktop/wordgrinder.command

# for maximal enjoy, put the wordgrinder icon in your .command
# go to https://github.com/davidgiven/wordgrinder/blob/master/extras/icon.png
# copy image
# go to wordgrinder.command and show "properties"
# then click on icon and paste!
