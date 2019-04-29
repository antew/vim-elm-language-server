# Vim support for Elm Language Server

* Note: This will likely be merged into ALE itself at some point, this repo is mainly for testing before that happens.

This plugin adds support for linting through [ALE](https://github.com/w0rp/ale) with [elm-language-server](https://github.com/razzeee/elm-language-server).

# Installation

| Package Manager | Command |
|---|---|
|[Vim-Plug](https://github.com/junegunn/vim-plug)|`Plug 'antew/vim-elm-language-server'`|
|[Vundle](https://github.com/VundleVim/Vundle.vim)|`Plugin 'antew/vim-elm-language-server'`
|[Pathogen](https://github.com/tpope/vim-pathogen)|<pre>cd ~/.vim/bundle<br>git clone https://github.com/antew/vim-elm-language-server.git</pre>|


## elm-language-server

I recommend installing it globally, `npm i -g elm-language-server`

For more info [see here](https://github.com/Razzeee/elm-language-server)

# Configuration

## Finding Executables
You can allow ALE to use a globally installed versions of `elm-language-server` with

```
let g:ale_elm_ls_use_global = 1
```

Or, you can configure ALE to use a globally installed version for all executables.

```
let g:ale_use_global_executables = 1
```
