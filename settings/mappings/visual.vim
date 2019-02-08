" Switch between panes using directional keys
xnoremap <C-h> <C-w>h
xnoremap <C-j> <C-w>j
xnoremap <C-k> <C-w>k
xnoremap <C-l> <C-w>l

vmap    <expr>  <C-h>   DVB_Drag('left')
vmap    <expr>  <C-l>   DVB_Drag('right')
vmap    <expr>  <C-j>   DVB_Drag('down')
vmap    <expr>  <C-k>   DVB_Drag('up')
vmap    <expr>  D       DVB_Duplicate()
