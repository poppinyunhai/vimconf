" Tips from http://nvie.com/posts/how-i-boosted-my-vim/
set guifont=Monaco:h14  " set fonts for gui vim
set nocompatible
set hidden
set showmatch
set copyindent
set ignorecase
set smartcase
set smarttab
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak
set noswapfile
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <silent> ,/ :nohlsearch<CR>
cmap w!! w !sudo tee % > /dev/null

" fix backspace delete
inoremap <BS> <Left><Del>
set whichwrap+=[

set t_Co=256
set mouse=a
syntax on
filetype on

filetype plugin indent on

set autowrite
set autoread
set number
set showcmd
set lcs=tab:>-,trail:-
set list
set showmode
set title
set ruler
set encoding=utf-8
set fileencoding=utf-8
set nobackup

set expandtab
set shiftwidth=2
set tabstop=4
set autoindent
set smartindent
set fdm=indent

set nowrap
set hlsearch
set incsearch
set tags=./tags
set background=dark
colo solarized

" paste mode
nnoremap <F5> :set invpaste paste?<CR>
set pastetoggle=<F5>
set showmode

" fn maping
map <F1> :wqall<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeMirror<CR>
map <F4> :wall<CR>

" set <Leader>
let mapleader = ","

noremap ; <S-:>

" TagList plugin
let Tlist_WinWidth = 30
let Tlist_Use_Right_Window=1
let Tlist_Use_SingleClick=1
map <F8> :! ctags -R .<CR>

" vim menu
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F6> :emenu <C-Z>

map <F7> :w<CR>

map <C-v> "*p
map <C-c> "*y
map <C-m> :e!<CR>

" tab config
map tn :tabnext<CR>
map tp :tabprev<CR>
map te :tabnew
map tc :tabclose<CR>

" clever tab completion
fun! KeywordComplete()
    let left = strpart(getline('.'), col('.') - 2, 1)
    if left =~ "^$"
        return "\<Tab>"
    elseif left =~ ' $'
        return "\<Tab>"
    else
        return "\<C-N>"
endfun
inoremap <silent> <Tab> <C-R>=KeywordComplete()<CR>

fun! OmniComplete()
    let left = strpart(getline('.'), col('.') - 2, 1)
    if left =~ "^$"
        return ""
    elseif left =~ ' $'
        return ""
    else
        return "\<C-x>\<C-o>"
endfun
inoremap <silent> <S-Tab> <C-R>=OmniComplete()<CR>

" turn on Omni completion
autocmd FileType c set ofu=ccomplete#Complete
autocmd FileType php set ofu=phpcomplete#CompletePHP
autocmd FileType python set ofu=pythoncomplete#Complete
autocmd FileType python set expandtab
autocmd FileType ruby set ofu=rubycomplete#Complete
autocmd FileType java set ofu=javacomplete#Complete
autocmd FileType javascript set ofu=javascriptcomplete#CompleteJS
autocmd FileType html set ofu=htmlcomplete#CompleteTags
autocmd FileType css set ofu=csscomplete#CompleteCSS
autocmd FileType xml set ofu=xmlcomplete#CompleteTags

" turn on syntax highlighting on scala file
autocmd FileType scala colo scala

map <Leader>d :EraseBadWhitespace<CR>
"map <Leader>t :CommandT<CR>

au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

au BufRead,BufNewFile *.less set ft=less syntax=less

" Powerline conf
set laststatus=2
let g:Powerline_symbols = 'fancy'

