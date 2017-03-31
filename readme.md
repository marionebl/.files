> assorted collection of .files

# .files
Collection of .files, not a lot of fanciness here.

* [x] zsh
* [x] oh-my-zsh
* [x] antigen
* [x] github hub cli
* [x] tiny rcm wrapper
* [x] managed via [rcm](https://github.com/thoughtbot/rcm)

## Usage
```
# install .files, download rcm and compile
npm install -g dotfiles-marionebl

# Symlink ./files/(.*) to ~/.$1
dotfiles-marionebl up

# Remove symlinks in ~/
dotfiles-marionebl down

# List symlinks in ~/
dotfiles-marionebl list
```
