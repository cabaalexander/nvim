" Vim Jsx
let g:jsx_ext_required = 0

" Airline
let g:airline#extensions#tabline#enabled = 1

" Anyfold
let anyfold_activate = 1

" Nerdtree
let NERDTreeQuitOnOpen = 1
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeIgnore=utils#nerdtreeIgnore()

" Emmet
let g:user_emmet_leader_key = '<NOP>'
map <leader><tab> <Plug>(emmet-expand-abbr)
let g:user_emmet_mode = 'nv'
let g:user_emmet_settings = {
  \   'javascript.jsx': {
  \     'extends' : 'jsx'
  \   }
  \ }

" CommandT cancel File selection
let g:CommandTCancelMap='<Esc>'

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

" AutoSave
let g:auto_save = 1
let g:auto_save_events = ["CursorHold"]

" Elm
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1

