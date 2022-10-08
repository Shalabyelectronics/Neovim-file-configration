set number
" change tabs to spaces
set expandtab
set relativenumber
set cursorline
set foldmethod=indent
set foldlevel=99
set linebreak
" set colorcolumn=35
" add 4 spaces for tab
set shiftwidth=4
"set tabstop=4
" hi ColorColumn ctermbg=lightgrey
" to remove the highlight
set nohlsearch
nnoremap <space> za
set scrolloff=8
call plug#begin()
    Plug 'nathanaelkane/vim-indent-guides'	
    Plug 'chun-yang/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'lukas-reineke/indent-blankline.nvim'
   " Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
call plug#end()

"colorscheme slate
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
