set number
highlight Comment ctermfg=green
set guioptions+=a
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set clipboard=unnamed

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

Plug 'vimsence/vimsence'

call plug#end()

let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
