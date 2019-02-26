" Airline / Powerline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep = "\uE0B4"
let g:airline_right_sep = "\uE0B6"
try
  let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])
catch
endtry

" Nerdtree
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeIgnore=utils#nerdtreeIgnore()

" Emmet
let g:user_emmet_leader_key = '<NOP>'
let g:user_emmet_mode = 'i'
imap <C-e> <Plug>(emmet-expand-abbr)

" Color scheme
let g:srcery_transparent_background = 1
try
  colorscheme srcery
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
let g:ale_sign_error = '💢'
let g:ale_sign_warning = '🧐'
let g:ale_lint_on_enter = 1
let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_linters = {
  \ 'jsx': ['eslint']
  \ }
let g:ale_fixers = {
\   'javascript': [
\       'eslint'
\   ],
\}
let g:ale_completion_enabled = 1

" Grip
let g:toogleGripPort = 35035

" Exuberant ctags
let g:easytags_async = 1

" Tagbar
let g:tagbar_sort = 0
let g:tagbar_type_elm = {
  \ 'ctagstype':'elm',
  \ 'kinds':['h:header', 'i:import', 't:type', 'f:function', 'e:exposing'],
  \ 'sro':'&&&',
  \ 'kind2scope':{'h':'header', 'i':'import', 't':'type', 'f':'function'},
  \ 'sort':0,
  \ 'ctagsbin':$HOME . '/.config/nvim/bin/elmtags.py',
  \ 'ctagsargs': '',
  \ }

" Elm
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1
let g:elm_jump_to_error = 0
let g:elm_make_show_warnings = 1
let g:elm_detailed_complete = 1

" VIM Notes
let g:notes_directories = [ '~/.notes' ]

" tmuxSend
let g:tmuxSendAutoSave = 1
let g:tmuxSendAutoClear = 1
let g:tmuxSendNotification = 1

" EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Gutentags
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js']
let g:gutentags_cache_dir = '~/.vim/gutentags'

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_conceal_null                      = 'ø'
let g:javascript_conceal_this                      = '@'
let g:javascript_conceal_return                    = '⇚'
let g:javascript_conceal_undefined                 = '¿'
let g:javascript_conceal_NaN                       = 'Ͷ'
let g:javascript_conceal_prototype                 = '¶'
let g:javascript_conceal_static                    = '•'
let g:javascript_conceal_super                     = 'Ω'
let g:javascript_conceal_arrow_function            = '⇒'
let g:javascript_conceal_noarg_arrow_function      = '▢'
let g:javascript_conceal_underscore_arrow_function = '▢'

" vim-tmux-runner
let g:vtr_filetype_runner_overrides = {
  \ 'sh': 'bash {file}',
  \ 'javascript.jsx': 'node {file}'
  \ }

" neosnippet
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'
let g:neosnippet#enable_completed_snippet = 1
