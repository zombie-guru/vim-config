execute pathogen#infect()
syntax on
filetype on
filetype plugin on
colorscheme jellybeans

" Variable Settings {{{
set clipboard=unnamed
set autoread
set nowrap        " don't wrap lines
set autoindent    " always set autoindenting on
set number        " always show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase
set smarttab      " insert tabs on the start of a line
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set expandtab     " whitespace tabs by default
set tabstop=2     " tab spacing is 2
set softtabstop=2 " back-tab spacing is 2
set shiftwidth=2  " auto indent is 2
"}}}

" Max line length settings {{{
set textwidth=80
set colorcolumn=+1
"}}}

" Golang settings {{{
set rtp+=/Volumes/src/go/src/golang.org/x/lint/misc/vim
autocmd BufWritePost,FileWritePost *.go silent! execute '!goimports -w % 2>/dev/null' | cwindow 10
autocmd BufWritePost,FileWritePost *.go silent! execute '!gofmt -s -w % 2>/dev/null' | cwindow 10
autocmd BufWritePost,FileWritePost *.go silent! execute 'Lint' | cwindow 10 
" }}}

" Terraform settinsg {{{
autocmd BufWritePre *.tf :%s/\s\+$//e             " delete trailing space 
autocmd BufWritePost,FileWritePost *.tf silent! execute '!terraform fmt --write=true % >/dev/null 2>/dev/null' | cwindow 10
"}}}
"
" Python settings {{{
autocmd FileType python setlocal tabstop=4        " tab spacing is 4
autocmd FileType python setlocal softtabstop=4    " back-tab spacing is 4
autocmd FileType python setlocal shiftwidth=4     " auto indent is 4
autocmd BufWritePre *.py :%s/\s\+$//e             " delete trailing space 
"}}}

"Ruby settings {{{
autocmd BufWritePre *.rb :%s/\s\+$//e             " delete trailing space 
"}}}

"Shell settings {{{
autocmd BufWritePre *.sh :%s/\s\+$//e             " delete trailing space 
"}}}

" RST settings {{{
autocmd FileType rst setlocal tabstop=4           " tab spacing is 4
autocmd FileType rst setlocal softtabstop=4       " back-tab spacing is 4
autocmd FileType rst setlocal shiftwidth=4        " auto indent is 4
autocmd BufWritePre *.rst :%s/\s\+$//e            " delete trailing space 
autocmd FileType rst setlocal syntax=rest         " use custom rest syntax
"}}}

" markdown settings {{{
autocmd FileType markdown setlocal tabstop=4      " tab spacing is 2
autocmd FileType markdown setlocal softtabstop=4  " back-tab spacing is 2
autocmd FileType markdown setlocal shiftwidth=4   " auto indent is 2
autocmd BufNewFile,BufRead *.md set ft=markdown spell
"}}}

" yaml settings {{{
autocmd FileType yaml setlocal tabstop=2      " tab spacing is 2
autocmd FileType yaml setlocal softtabstop=2  " back-tab spacing is 2
autocmd FileType yaml setlocal shiftwidth=2   " auto indent is 2
autocmd BufWritePre *.yaml :%s/\s\+$//e       " delete trailing space

autocmd FileType yml setlocal tabstop=2      " tab spacing is 2
autocmd FileType yml setlocal softtabstop=2  " back-tab spacing is 2
autocmd FileType yml setlocal shiftwidth=2   " auto indent is 2
autocmd BufWritePre *.yml :%s/\s\+$//e       " delete trailing space
"}}}

" terraform settings {{{
let g:terraform_align=1
"}}}

" Key Mappings {{{
cmap w!! w !sudo tee > /dev/null %
nmap <S-Tab> <<
imap <S-Tab> <Esc><<i
map <C-p> :CtrlP<CR>
map <C-k> :NERDTreeToggle<CR>
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
autocmd BufWritePost *.py call Flake8()
"}}}

