syntax on
set number
set nocompatible
set noswapfile
set nobackup
set nowritebackup
set tabstop=4
set encoding=utf-8
set signcolumn=yes
set splitbelow
set shell=bash
colorscheme habamax
set statusline=%t\ %=\ %Y\ %l-%c

so ~/.config/nvim/setting/plug.vim
so ~/.config/nvim/setting/tabline.vim

set tabline=%!Tabline()

function TermOpen()
		7sp
		terminal
endfunction

tnoremap <Esc> <C-\><C-n>
nnoremap <F4> :bd<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-t> :call TermOpen()<CR>
inoremap <C-j> <Esc><C-w>j
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
autocmd BufRead *.rs so ~/.config/nvim/setting/rust.vim
