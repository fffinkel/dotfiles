set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" tags
Plugin 'craigemery/vim-autotag'
Plugin 'vim-scripts/taglist.vim'

" navigation
Plugin 'easymotion/vim-easymotion'
Plugin 'pjcj/vim-hl-var'
Plugin 'gabrielelana/vim-markdown'

" open urls
Plugin 'dhruvasagar/vim-open-url'

" comments
Plugin 'tpope/vim-commentary'

" search
Plugin 'mileszs/ack.vim'

" golang
Plugin 'fatih/vim-go'

" yaml
Plugin 'pedrohdz/vim-yaml-folds'
Plugin 'lmeijvogel/vim-yaml-helper'

call vundle#end()
filetype on
