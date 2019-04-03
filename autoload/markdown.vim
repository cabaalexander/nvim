function! markdown#togglePreview() abort
    " Show or hide stuffs ;)
    if !get(b:, 'PreviewBool')
        execute('MarkdownPreview')
        let b:PreviewBool=1 " toggle true
    else
        execute('MarkdownPreviewStop')
        let b:PreviewBool=0 " toggle false
    endif
endfunction
