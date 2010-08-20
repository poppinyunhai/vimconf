set t_Co=256
set nocompatible
set mouse=a
syntax on
filetype on
filetype plugin on

set autowrite
set autoread
set number
set showcmd
set lcs=tab:>-,trail:-
set list
set showmode
set title
set tabstop=4
set ruler
set encoding=utf-8
set fileencoding=utf-8
set nobackup
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set smarttab
set fdm=indent
"set fdc=4
set nowrap
set hlsearch
set incsearch
set tags=./tags
colo default


" fn maping
map <F1> :wqall<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeMirror<CR>
map <F4> :wall<CR>

" TagList plugin
map <F5> :TlistToggle<CR>
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
autocmd FileType ruby set ofu=rubycomplete#Complete
autocmd FileType java set ofu=javacomplete#Complete
autocmd FileType javascript set ofu=javascriptcomplete#CompleteJS
autocmd FileType html set ofu=htmlcomplete#CompleteTags
autocmd FileType css set ofu=csscomplete#CompleteCSS
autocmd FileType xml set ofu=xmlcomplete#CompleteTags

" turn on syntax highlighting on scala file
autocmd FileType scala colo scala
