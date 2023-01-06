nnoremap <F5> :call CargoRun()<CR> 
nnoremap <F6> :call CheckDir()<CR> 
function! CargoRun()
		lcd %:h
		wincmd l
		terminal cargo run
endfunction
