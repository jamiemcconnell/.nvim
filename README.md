.nvim
======

My NeoVim config `nvim.init` and plugins  
I use [VimR](http://vimr.org/) a macOS gui wrapper for Neovim.

## Setup
Run the following commands
```console
cd ~/
git clone --recursive git@github.com:jamiemcconnell/.nvim.git .nvim
ln -s $HOME/.nvim $HOME/.config/nvim
git submodule update --init
```

## Useful commands
Add a new plugin
``` console
cd bundle
git submodule add <git-http-url>
```

Remove a plugin
``` console
git rm -g <bundle/path>
```

## Pathogen
The vim dot files make use of the excellent [Pathogen](https://github.com/tpope/vim-pathogen) runtime path manager to install plugins and runtime files into their own private directories.
Currently using Pathogen 2.4

## Plugins used
* [github.com/ekalinin/Dockerfile.vim](https://github.com/ekalinin/Dockerfile.vim.git)
* [github.com/ayu-theme/ayu-vim](https://github.com/ayu-theme/ayu-vim.git)
* [github.com/kien/ctrlp.vim](https://github.com/kien/ctrlp.vim.git)
* [github.com/Raimondi/delimitMate](https://github.com/Raimondi/delimitMate.git)
* [github.com/carlitux/deoplete-ternjs](https://github.com/carlitux/deoplete-ternjs.git)
* [github.com/Shougo/deoplete.nvim](https://github.com/Shougo/deoplete.nvim.git)
* [github.com/junegunn/fzf](https://github.com/junegunn/fzf)
* [github.com/junegunn/fzf.vim](https://github.com/junegunn/fzf.vim.git)
* [github.com/othree/jspc.vim](https://github.com/othree/jspc.vim.git)
* [github.com/zsoltf/vim-maui](https://github.com/zsoltf/vim-maui.git)
* [github.com/scrooloose/nerdtree](https://github.com/scrooloose/nerdtree.git)
* [github.com/Xuyuanp/nerdtree-plugin.git](https://github.com/Xuyuanp/nerdtree-git-plugin.git)
* [github.com/mhartington/oceanic-next](https://github.com/mhartington/oceanic-next.git)
* [github.com/ervandew/supertab](https://github.com/ervandew/supertab.git)
* [github.com/vim-syntastic/syntastic](https://github.com/vim-syntastic/syntastic.git)
* [github.com/ternjs/tern_for_vim](https://github.com/ternjs/tern_for_vim.git)
* [github.com/SirVer/ultisnips](https://github.com/SirVer/ultisnips.git)
* [github.com/mbbill/undotree](https://github.com/mbbill/undotree.git)
* [github.com/vim-airline/vim-airline](https://github.com/vim-airline/vim-airline.git)
* [github.com/vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes.git)
* [github.com/Chiel92/vim-autoformat](https://github.com/Chiel92/vim-autoformat.git)
* [github.com/ntpeters/vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace.git)
* [github.com/cseelus/vim-colors-lucid](https://github.com/cseelus/vim-colors-lucid.git)
* [github.com/tpope/vim-five.git](https://github.com/tpope/vim-fugitive.git)
* [github.com/airblade/vimgutter.git](https://github.com/airblade/vim-gitgutter.git)
* [github.com/fatih/vim-go](https://github.com/fatih/vim-go.git)
* [github.com/MaxMEllon/vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty.git)
* [github.com/terryma/vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors.git)
* [github.com/fatih/vim-nginx](https://github.com/fatih/vim-nginx.git)
* [github.com/honza/vim-snippets](https://github.com/honza/vim-snippets.git)
* [github.com/othree/yajs.vim](https://github.com/othree/yajs.vim.git)
* [github.com/HerringtonDarkholme/yats.vim](https://github.com/HerringtonDarkholme/yats.vim.git)
