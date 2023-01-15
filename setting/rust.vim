nnoremap <silent> <F5> :call CargoRun()<CR> 
nnoremap <silent> <F6> :call CheckDir()<CR> 
function! CargoRun()
		lcd %:h
		wincmd l
		terminal cargo run
endfunction
