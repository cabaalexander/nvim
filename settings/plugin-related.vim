" vim: ts=2:sw=2

" for linter warnings ¯\\_(ツ)_/¯
scriptencoding utf-8

" Airline / Powerline
let g:airline_powerline_fonts = 1

" Indentline
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Nerdtree
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeIgnore=utils#nerdtreeIgnore()
let g:NERDTreeWinSize=40
let g:NERDTreeDirArrowExpandable = "\u00a0"
let g:NERDTreeDirArrowCollapsible = "\u00a0"

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

" Ale
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 1
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'sh': [
      \     'shfmt'
      \   ],
      \ }
let g:ale_echo_msg_format = '[%linter%] (%code%) %s'
let g:ale_fix_on_save = 1

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

" vim-tmux-runner
let g:vtr_filetype_runner_overrides = {
      \ 'sh': 'bash {file}',
      \ 'javascript.jsx': 'node {file}',
      \ 'go': 'go run {file}',
      \ 'html': 'lvserver -ro {file}',
      \ 'rust': 'cargo run'
      \ }

" neosnippet
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'
let g:neosnippet#enable_completed_snippet = 1

" vim-mergetool
let g:mergetool_layout = 'm,r'
let g:mergetool_prefer_revision = 'local'

" markdown-preview.nvim
let g:mkdp_open_to_the_world = 1
let g:mkdp_open_ip = '127.0.0.1'
let g:mkdp_port = '35035'
let g:mkdp_auto_close = 0
let g:mkdp_echo_preview_url = 1
let g:mkdp_auto_close = 0

" ferret
let g:FerretMap=0

" projectionist
let g:projectionist_heuristics = {
      \   '*': {
      \     '*index.js': {
      \       'alternate': '{dirname}/styles.js',
      \       'type': 'source'
      \     },
      \     '*styles.js': {
      \       'alternate': '{dirname}/index.js',
      \       'type': 'style'
      \     }
      \   }
      \ }

" buftabline
let g:buftabline_numbers = 2
let g:buftabline_plug_max = 9
let g:buftabline_indicators = 1

" auto-pairs
let g:AutoPairsMultilineClose = 0

" jdsoc
let g:jsdoc_enable_es6 = 1

" vim-multiple-cursors
let g:multi_cursor_start_word_key = ',cc'
let g:multi_cursor_next_key = ',cc'
let g:multi_cursor_quit_key = '<Esc>'

" coc.nvim
let g:coc_global_extensions = [
      \ 'coc-css',
      \ 'coc-eslint',
      \ 'coc-git',
      \ 'coc-highlight',
      \ 'coc-html',
      \ 'coc-json',
      \ 'coc-marketplace',
      \ 'coc-prettier',
      \ 'coc-reason',
      \ 'coc-stylelint',
      \ 'coc-tsserver',
      \ 'coc-yaml',
      \ 'coc-neosnippet',
      \ 'coc-snippets',
      \ 'coc-rls',
      \ ]

" vim-windowswap
let g:windowswap_map_keys = 0

" vim-table-mode
let g:table_mode_corner='|'
