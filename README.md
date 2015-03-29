Plug.vim utils
==============

- [x] Install plugin from clipboard.

### Algorithm:

1. Find ^call plug#end\(\) in your vimrc.
2. Move cursor to line above.
3. If cliboard contains 'github.com', then should remove `https?://github.com/`.
   Add `Plug '{clipboard}'`
4. Add empty line below.
5. Run `PlugInstall`

Installation
===========

Add to your vimrc:

```viml
Plug 'kovetskiy/vim-plugvim-utils'
```

And add binding:

```
nnoremap <Leader><Leader>c :call NewPlugFromClipboard()<CR>
```
