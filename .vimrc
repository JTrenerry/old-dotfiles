# All of this goes to ~/.vimrc

set number
highlight Comment ctermfg=green
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch

# Remove the below for the global vimrc (/etc/vimrc)

" Plugin section
call plug#begin()

Plug 'tpope/vim-sensible'

Plug 'https://github.com/tpope/vim-fugitive.git'

Plug 'https://github.com/github/copilot.vim.git'

Plug 'https://github.com/airblade/vim-gitgutter.git'

Plug 'https://github.com/mhinz/vim-startify.git'

Plug 'https://github.com/ap/vim-css-color.git'

Plug 'https://github.com/sheerun/vim-polyglot.git'

Plug 'https://github.com/f-person/git-blame.nvim.git'

call plug#end()
