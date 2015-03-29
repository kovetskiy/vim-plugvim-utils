Plug.vim utils
==============

- [x] Install plugin from clipboard.

### Algorithm:

1. Find `^call plug#end\(\)` in your vimrc.
2. Move cursor to line above.
3. Add `Plug '{clipboad}'`.
4. Add empty line below.
5. Run `PlugInstall`.

Installation
===========

Add to your vimrc:

```viml
Plug 'kovetskiy/vim-plugvim-utils'
```

And add binding:

```viml
nnoremap <Leader><Leader>c :call NewPlugFromClipboard()<CR>
```
