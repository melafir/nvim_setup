let mapleader = " "
syntax on
set number
set nocompatible
set noswapfile
set nobackup
set nowritebackup
set autoindent expandtab tabstop=4 shiftwidth=4
set encoding=utf-8
set signcolumn=yes
set splitbelow
set shell=bash
set statusline=%t\ %=\ %Y\ buffers:\ %n-%{NumberOfBuffers()}\ %l-%c
set statusline=%t\ %=\ %Y\ buffers:\ %n-%{NumberOfBuffers()}\ %l-%c

so ~/.config/nvim/setting/plug.vim
so ~/.config/nvim/setting/tabline.vim
so ~/.config/nvim/setting/color.vim

set tabline=%!Tabline()

function TermOpen()
		7sp
		terminal
endfunction
function NumberOfBuffers()
  return len(getbufinfo({'buflisted':1}))
endfunction

tnoremap <Esc> <C-\><C-n>
nnoremap <silent> <F4> :bd!<CR>
nnoremap <silent> <C-e> :NERDTreeToggle<CR>
nnoremap <silent> <C-t> :call TermOpen()<CR>
inoremap <C-j> <Esc><C-w>j
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <C-q> :q<CR>
"Leader mapping
nnoremap <silent> <leader>m :marks<CR>
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <silent> <leader>bb :bp<CR>
nnoremap <silent> <leader>l :so $MYVIMRC<CR>
nnoremap <silent> <leader>bl :buffers<CR>
vnoremap <silent> <leader>c :s/^/#<CR>
"Autocomands
autocmd BufRead *.rs so ~/.config/nvim/setting/rust.vim
