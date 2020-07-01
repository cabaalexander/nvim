function! utils#toggleNumbers() abort
    " Hides or shows line numbers
    set nu!
    set relativenumber!
endfunction

function! utils#toggleLCD() abort
    " Change the LCD between root and current buffer
    if get(b:, 'initialLCD') == '0'
        let b:initialLCD=getcwd()
    endif

    if !get(b:, 'toggleLCDBool')
        let b:path=expand("%:p:h")
        let b:toggleLCDBool=1 " toggle true
    else
        let b:path=b:initialLCD
        let b:toggleLCDBool=0 " toggle false
    endif

    execute("lcd " . b:path)
    echom "LCD changed to: " . b:path
endfunction

function! utils#escapeSnake(char) abort
    " Escapes snake character (~) to be used on regex
    if a:char == "~"
        return "\\" . a:char
    else
        return a:char
    endif
endfunction

function! utils#globToRegex(glob) abort
    " Conver end of string glob pattern to regex
    if a:glob !~ "^[*]"
        return a:glob
    endif
    let l:regex=strcharpart(a:glob, 1)
    let l:regex=split(l:regex, '\zs')
    let l:regex=map(copy(l:regex), {idx, val -> utils#escapeSnake(val)})
    let l:regex=join(l:regex, '')

    return '\' . l:regex . "$"
endfunction

function! utils#nerdtreeIgnore() abort
    " Returns a list elements in the ~/.config/git/ignore file
    let l:homePrefix=expand('~') . "/"
    let l:lines=readfile(l:homePrefix . ".config/git/ignore")
    let l:lines=filter(copy(l:lines), {idx, val -> strlen(val) && val !~ "^#"})
    let l:lines=map(copy(l:lines), {idx, val -> utils#globToRegex(val)})

    return l:lines
endfunction

function! utils#toggleConceal() abort
    " Show or hide toggleConceal
    if !get(b:, 'toggleConcealBool')
        set conceallevel=0
        let b:toggleConcealBool=1 " toggle true
    else
        set conceallevel=1
        let b:toggleConcealBool=0 " toggle false
    endif
endfunction

function! utils#output(...)
    " this function output the result of the
    " Ex command into a split scratch buffer
    let cmd = join(a:000, ' ')
    let temp_reg = @"
    redir @"
    silent! execute cmd
    redir END
    let output = copy(@")
    let @" = temp_reg
    if empty(output)
        echoerr 'no output'
    else
        new
        setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted
        put! =output
    endif
endfunction
