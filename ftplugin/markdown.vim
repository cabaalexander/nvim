" Only do this when not done yet for this buffer
if exists('b:did_ftplugin_markdown')
  finish
endif
let b:did_ftplugin_markdown=1

" ############
" #          #
" # Defaults #
" #          #
" ############
setlocal spell

" ##########
" #        #
" # Normal #
" #        #
" ##########

nmap <C-p> <Plug>MarkdownPreviewToggle<CR>
