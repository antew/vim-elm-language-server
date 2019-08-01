# DEPRECATED - Now Built into ALE #

Install [`ale`](https://github.com/w0rp/ale) and use `elm_ls` linter. See [elm-language-server README](https://github.com/elm-tooling/elm-language-server#ale) and [ale README](https://github.com/w0rp/ale#usage) for usage instructions.

# Vim support for Elm Language Server

* Note: This will likely be merged into ALE itself at some point, this repo is mainly for testing before that happens.

This plugin adds support for linting through [ALE](https://github.com/w0rp/ale) with [elm-language-server](https://github.com/elm-tooling/elm-language-server).

# Installation

| Package Manager | Command |
|---|---|
|[Vim-Plug](https://github.com/junegunn/vim-plug)|`Plug 'antew/vim-elm-language-server'`|
|[Vundle](https://github.com/VundleVim/Vundle.vim)|`Plugin 'antew/vim-elm-language-server'`
|[Pathogen](https://github.com/tpope/vim-pathogen)|<pre>cd ~/.vim/bundle<br>git clone https://github.com/antew/vim-elm-language-server.git</pre>|


## elm-language-server

[elm-language-server](https://github.com/elm-tooling/elm-language-server) is not currently published as an npm package, to install it you can run:
```
$ git clone https://github.com/elm-tooling/elm-language-server.git
$ cd elm-language-server
$ npm install
$ npm run compile
$ npm link
```

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

You can set the path to `elm`, `elm-format`, `elm-test` and `elm-language-server` if desired, it defaults to assuming executables are avilable on the `$PATH`.
```
let g:ale_elm_ls_elm_path = "/path/to/elm"
let g:ale_elm_ls_elm_format_path = "/path/to/elm-format"
let g:ale_elm_ls_elm_test_path = "/path/to/elm-test"
let g:ale_elm_ls_executable = "/path/to/elm-language-server"
```

Disable ale's `elm` linter to avoid duplicate compile error messages:

```
let g:ale_linters_ignore = { 'elm': ['make'] }
```
