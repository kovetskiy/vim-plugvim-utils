if !exists('g:plugrc')
    let g:plugrc = '~/.vimrc'
endif

function! NewPlugFromClipboard()
    let clipboard = system('xclip -o')

    let plug = clipboard
    if plug =~ "github.com"
        let plug = substitute(plug, "https\\?://github.com/", "", "g")
    endif

    execute "tabedit" g:plugrc

    call feedkeys("/\\v^call plug#end\(\)\<CR>" .
                \ "O\<ESC>0C" .
                \ "Plug \<C-V>'" . plug .  "\<C-V>'" .
                \ "\<CR>\<ESC>0D")

    call feedkeys(":noautocmd w\<CR>")
    call feedkeys(":PlugInstall\<CR>")
endfunction
