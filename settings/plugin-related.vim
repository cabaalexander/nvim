" Airline
let g:airline#extensions#tabline#enabled = 1

" Nerdtree
let NERDTreeQuitOnOpen = 1
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeIgnore=utils#nerdtreeIgnore()

" Emmet
let g:user_emmet_leader_key = '<NOP>'
map <leader><tab> <Plug>(emmet-expand-abbr)
let g:user_emmet_mode = 'nv'

" Awesome vim color scheme
try
  colorscheme gruvbox
  set background=dark
catch
endtry

" Deoplete
let g:deoplete#enable_at_startup = 1

" Deoplete-tern (javascript)
let g:deoplete#sources#ternjs#include_keywords = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#filetypes = [
  \ 'jsx',
  \ 'js',
  \ ]

" Ale
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0

" Grip
let g:toogleGripPort = 35035

" Exuberant ctags
let g:easytags_async = 1

" Tagbar
let g:tagbar_type_elm = {
  \ 'ctagstype':'elm',
  \ 'kinds':['h:header', 'i:import', 't:type', 'f:function', 'e:exposing'],
  \ 'sro':'&&&',
  \ 'kind2scope':{'h':'header', 'i':'import', 't':'type', 'f':'function'},
  \ 'sort':0,
  \ 'ctagsbin':$HOME . '/.config/nvim/bin/elmtags.py',
  \ 'ctagsargs': '',
  \ }

" AutoSave
let g:auto_save = 0
let g:auto_save_events = ["CursorHold"]

" Elm
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1
let g:elm_jump_to_error = 0
let g:elm_make_show_warnings = 1
let g:elm_detailed_complete = 1

