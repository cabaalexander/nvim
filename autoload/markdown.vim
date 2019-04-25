function! markdown#togglePreview() abort
    " Show or hide stuffs ;)
    if !get(b:, 'MarkdownPreviewToggleBool')
        execute('MarkdownPreview')
        let b:MarkdownPreviewToggleBool=1 " toggle true
    else
        execute('MarkdownPreviewStop')
        let b:MarkdownPreviewToggleBool=0 " toggle false
    endif
endfunction
