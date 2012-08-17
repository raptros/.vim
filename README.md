# .vim
This is my .vim directory, made tidy using [pathogen] []. 

## What
Scala stuff, latex stuff, various plugins for various things.

## Setup
Setup has been split up.

### .vimrc
Here's a three line vimrc that wil make it all work. Write it into the home directory after cloning the repo.
```viml
runtime! debian.vim
set nocompatible
call pathogen#infect()
```

### Actual Settings
These can be found in plugin/raptros.vim.

[pathogen]: http://github.com/tpope/vim-repeat (Pathogen)
