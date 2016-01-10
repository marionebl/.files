#!/bin/sh
curl -LO https://thoughtbot.github.io/rcm/dist/rcm-1.3.0.tar.gz
sha=$(shasum rcm-1.3.0.tar.gz | cut -f1 -d' ')

if [ "$sha" = "10a04bf8a299f7a4991006e65a7d8fb95615565b" ]
  then
    mkdir temporary
    mv rcm-1.3.0.tar.gz temporary/rcm-1.3.0.tar.gz
    cd temporary
    tar -xvf rcm-1.3.0.tar.gz
    cd rcm-1.3.0
    ./configure --prefix=$(dirname $PWD)
    make
    make install
  else echo "checksums did not match"; exit 1;
fi

if [ ! command -v homebrew ]
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

PWD=$PWD

homebrew install the_silver_searcher cmake neovim/neovim/neovim
cd ~/.vim/bundle/YouCompleteMe
./install.py
cd ~/.vim/bundle/tern_for_vim
npm install

cd $PWD
