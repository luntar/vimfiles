
function instPlug
{
  if [ -e bundle/$2 ];then
   echo $2 is installed
  else
     git submodule add $1 bundle/$2
  fi
}



#
# START OF SCRIPT
#


# Look for the users vim directory
if [ -d ~/.vim ];then
  VIM_ROOT_PATH=~/.vim
else
  VIM_ROOT_PATH=~/vimfiles
fi

# Make sure there's a vim directory before we go
# installing a bunch of stuff
if [ ! -d $VIM_ROOT_PATH ];then 
  echo ERROR: Can not find the vim directory
  return -1
else
  echo Using $VIM_ROOT_PATH
fi



pushd .
cd $VIM_ROOT_PATH

# Verify pathogen is installed
if [ -e autoload/pathogen.vim ];then
   echo Pathogen is installed
else
   curl -Sso ./autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi


# git integration
instPlug https://github.com/tpope/vim-fugitive.git vim-fugitive

# Statusline
instPlug https://github.com/Lokaltog/powerline.git vim-powerline

# Clojure support
instPlug git://github.com/tpope/vim-fireplace.git vim-fireplace
instPlug git://github.com/tpope/vim-classpath.git vim-classpath
instPlug git://github.com/guns/vim-clojure-static.git vim-clojure-static
instPlug https://github.com/kien/rainbow_parentheses.vim.git vim-rainbow_parentheses

# Fuzzy mru, dir, buffer, and tag seach
instPlug https://github.com/vim-scripts/FuzzyFinder.git vim-FuzzyFinder
instPlug https://github.com/vim-scripts/L9.git vim-L9

# Internal vim note taking wiki like
instPlug https://github.com/vim-scripts/vimwiki.git vim-vimwiki

# tag browsing - needs ctags
instPlug https://github.com/vim-scripts/taglist.vim.git vim-taglist

# Directory browser
instPlug https://github.com/scrooloose/nerdtree.git vim-nerdtree 

# Surroundings for parentheses, brackets, quotes, XML tags, and more.
instPlug https://github.com/tpope/vim-surround.git vim-surround

# Snippet support
instPlug http://github.com/msanders/snipmate.vim vim-snipmate
instPlug https://github.com/honza/vim-snippets.git vim-snippets 

# tab completion
instPlug https://github.com/neitanod/vim-clevertab.git

# plant UML syntax
instPlug https://github.com/aklt/plantuml-syntax.git vim-plantuml-syntax

# Close a buffer and keep the window
instPlug https://github.com/rbgrouleff/bclose.vim.git vim-bclose

# Grep like seach that's very cool
instPlug https://github.com/vim-scripts/Bck.git vim-Bck

# Better session managment
instPlug https://github.com/xolox/vim-session.git vim-session

# Chess .pgn syntx
instPlug https://github.com/vim-scripts/Chess-files-.pgn-extension.git vim-chess-png
instPlug https://github.com/vim-scripts/JellyX.git vim-jellyx

# Commenting things out
instPlug git://github.com/tpope/vim-commentary.git vim-commentary

# Managing unsupported colors, use:colo detailed 
instPlug https://github.com/rking/vim-detailed.git vim-detailed

instPlug https://github.com/dgrnbrg/vim-redl.git vim-redl

# Bash support
instPlug https://github.com/vim-scripts/bash-support.vim.git vim-bash-support 
instPlug https://github.com/vim-scripts/cscope.vim.git vim-cscope

# Undo 
instPlug https://github.com/vim-scripts/undotree.vim.git vim-undotree

# Window Zoom in/out of the same window
instPlug https://github.com/vim-scripts/ZoomWin.git vim-zoomwin

# Helping with typo-prevention, smart renaming of stuff
instPlug https://github.com/tpope/vim-abolish vim-abolish

# Perl support
instPlug https://github.com/vim-perl/vim-perl.git vim-perl

# Python support
instPlug https://github.com/kevinw/pyflakes-vim.git vim-pyflakes

popd
