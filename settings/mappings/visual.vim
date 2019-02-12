" Switch between panes using directional keys
xnoremap <C-h> <C-w>h
xnoremap <C-j> <C-w>j
xnoremap <C-k> <C-w>k
xnoremap <C-l> <C-w>l

vmap    <expr>  <M-h>   DVB_Drag('left')
vmap    <expr>  <M-l>   DVB_Drag('right')
vmap    <expr>  <M-j>   DVB_Drag('down')
vmap    <expr>  <M-k>   DVB_Drag('up')
vmap    <expr>  D       DVB_Duplicate()
