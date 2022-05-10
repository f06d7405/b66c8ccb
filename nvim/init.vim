syntax on
set ruler
set formatoptions+=o
set modeline
set nojoinspaces
set relativenumber
set number
set mouse=a

set splitbelow
set splitright

set showcmd
set noshowmode
set noswapfile
set nobackup
set encoding=utf-8

set incsearch
set hlsearch
set ignorecase
set smartcase

set autoindent
set tabstop=4 shiftwidth=4 expandtab
set wildoptions-=pum

call plug#begin()
  Plug 'vim-airline/vim-airline'
  Plug 'cocopon/inspecthi.vim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'folke/twilight.nvim'
  Plug 'SirVer/ultisnips'
call plug#end()

let g:UltiSnipsSnippetDirectories=["~/.config/nvim/snips"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

colorscheme aposematism

lua << EOF
  require("twilight").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF
hi! Twilight ctermfg=08
"autocmd VimEnter * TwilightEnable

let g:airline_theme='vanguard'

let g:opamshare = substitute(system('opam var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
