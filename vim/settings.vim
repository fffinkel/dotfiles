
set number " line numbers
set nospell " spelling
set bg=dark " dark background
set colorcolumn=81 " column to indicate long lines
set tw=80 " word wrap / TODO: this sucks
set fo=tcqb " auto-wrap, auto-add comment leader, allow use of gq, don't auto-wrap long lines
set directory=~/.vim/swap/ " swap dir

"TODO: comments
"
set showcmd
set showmatch
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartcase
set hlsearch
set incsearch
set scrolloff=4
set laststatus=2
set statusline=%F%m%r%h%w\ [\%03.3b]\ [\%02.2B]\ [%04l,%04v][%p%%]\ [%L]
set wildignorecase
set updatetime=500
set wildmenu
set wildmode=full

" show whitespace characters
set list
set listchars=tab:☃·,trail:∙,precedes:«,extends:»

" backups
set backup
set backupdir=~/.vim/backups/

" perl
let perl_extended_vars = 1
let perl_highlight_matches = 1

" snipmate plugin
let g:snippets_dir = '/home/mfinkel/.vim/snippets/'

" taglist plugin
let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Auto_Auto_Highlight_Tag = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Display_Tag_Scope = 1
let Tlist_Max_Submenu_Items = 20
let tlist_perl_settings='perl;u:use;p:package;r:role;e:extends;c:constant;a:attribute;s:subroutine;l:label'
let tlist_go_settings = 'go;o:TODO‽;t:type;f:function'

" make vim-wiki zr-wiki
let g:vimwiki_list = [{'path': '~/ziprecruiter/.zr-wiki/mattf/', 'syntax': 'markdown', 'ext': '.page'}]

" golang
"let g:go_version_warning = 0
let g:go_fmt_command = "gofmt"
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
let g:go_gocode_autobuild = 0

" sirver/ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" fixes broken plugin on Catalina
let g:autotagStartMethod="fork"

" vim-markdown
let g:markdown_enable_conceal = 1

" make ack.vim use ag
let g:ackprg = 'ag --vimgrep'
" if executable('ag')
"   let &grepprg = "ag --vimgrep"
"   set grepformat^=%f:%l:%c:%m
" endif
