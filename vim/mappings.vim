
" Move between splits
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Move lines at a time
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv

" Blame
vmap <leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" Vertical split resize, keep visual mode highlights
nmap > 5<C-W>>
nmap < 5<C-W><
vnoremap < <gv
vnoremap > >gv

" Function keys
nnoremap <F2> :Ack! <cword><CR><CR>
nnoremap <F3> :Ack! <cword> <C-R>=expand('%:p:h')<CR>
"nnoremap <F4> :!grep -r '\#TODO ' %<CR>
nmap <F5> :vs 
nmap <F6> :tabe 
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>

" Tig
nmap <leader>t :!tig %<CR><CR>

" Taglist
nnoremap <leader>tl :TlistToggle<CR>

" Ack
nnoremap <leader>a :Ack!<Space>

" Shell
nnoremap <leader>s :shell<CR>

" reset split size
nnoremap <leader>w :vertical resize 85<CR>

" quick vimrc edit
nmap <leader>v :tabe ~/.vimrc<CR>
nmap <leader>V :tabe ~/.vim/<CR>

" fake ass go debug
abbrev ff fmt.Printf("\n\n----------> %s\n", )
abbrev fff zz, _ := json.MarshalIndent( , "", "\t")<cr>fmt.Printf("\n\n----------> %s\n", zz)
abbrev ffff buf := &bytes.Buffer{}<cr>buf.ReadFrom( )<cr>zz := buf.String()<cr>mt.Printf("\n\n----------> %s\n", zz)

" notes
nmap <leader>no :tabe <C-R>=system("~/.vim/opennotes.sh")<cr><cr>
imap <F3> ## <C-R>=strftime("%Y-%m-%d %a %I:%M %p %Z")<cr> (
nmap <F4> :r !~/src/gerber/bin/gerber notes <cword><cr>

" dd to black hole register
nnoremap d "_d
vnoremap d "_d
