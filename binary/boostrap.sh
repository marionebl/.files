#/bin/bash

# cli tools
xcode-select --install &&\
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" &&\
curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails &&\
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
brew cask install\
  google-chrome\
  firefox\
  1password\
  dropbox\
  totalterminal\
  bartender\
  atom\
  xquartz\
  sketch\
  sketch-tool\
  inkscape &&\
nvm install 5 &&\
nvm alias default 5 &&\
rcm up &&\
vim +PluginInstall
cd ~/.vim/bundle/YouCompleteMe &&\
./install.py &&\
cd ~/.vim/bundle/tern_for_vim &&\
npm install
