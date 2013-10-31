map <Leader>s :call RunNearestSpec()<CR>
map <Leader>a :call RunCurrentSpecFile()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>A :call RunAllSpecs()<CR>

let g:rspec_command = 'call Send_to_Tmux("spring rspec {spec}\n")'
