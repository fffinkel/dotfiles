
set nocompatible
filetype off

"set background=dark
"colorscheme solarized8

set rtp+=$GOROOT/misc/vim
filetype plugin indent on
au BufRead,BufNewFile *.t set filetype=perl
syntax on

scriptencoding utf-8
set encoding=utf-8

au BufWritePost ~/.vim/* :source ~/.vimrc
au BufWritePost ~/.vimrc :source ~/.vimrc

au BufWritePost ~/.zsh/* :source ~/.zshrc
au BufWritePost ~/.zshrc :!source ~/.zshrc

au BufRead,BufNewFile *.md setlocal textwidth=80

source ~/.vim/plugins.vim
source ~/.vim/settings.vim
source ~/.vim/mappings.vim

set completeopt+=longest,noselect,menuone,preview
