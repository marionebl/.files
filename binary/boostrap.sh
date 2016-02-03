#/bin/bash

# cli tools
xcode-select --install

# rvm and homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" &&\
curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails &&\

# install cli essentials
brew install \
  git \
  hub \
  rcm\
  nvm\
  jenv\
  docker\
  docker-machine\
  docker-compose\
  wget\
  zsh\
  neovim/neovim/neovim\
  the_silver_searcher\
  cmake &&\

# install essential applications
brew cask install\
  google-chrome\
  firefox\
  1password\
  dropbox\
  totalterminal\
  bartender\
  atom &&\
# runtimes
nvm install 5 &&\
nvm alias default 5 &&\

# get the configuration party started
rcm up &&\

# install vim bundles &&\
vim +PluginInstall

# some hoops
cd ~/.vim/bundle/YouCompleteMe &&\
./install.py &&\
cd ~/.vim/bundle/tern_for_vim &&\
npm install
