" https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
" https://dougblack.io/words/a-good-vimrc.html
" https://github.com/skwp/dotfiles/blob/master/vimrc
" https://github.com/spf13/spf13-vim/blob/3.0/.vimrc
" Font: Roboto Mono Nerd Font Complete

filetype plugin on
filetype indent on
set autoread
let mapleader="\<SPACE>"
set ruler
set cmdheight=2
set ignorecase
set hlsearch
set incsearch 
set showmatch 
set mat=2
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
syntax enable
set number
set cursorline
set wildmenu
nnoremap j gj
nnoremap k gk
nnoremap H ^
nnoremap L $
set visualbell
filetype plugin on
filetype indent on
set mouse=a
set hidden
set showmode
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
set showcmd
set laststatus=2
"set statusline=%<%f\
"set statusline+=%w%h%m%r 
"set statusline+=\ [%{&ff}/%Y]            " Filetype
"set statusline+=\ [%{getcwd()}]          " Current dir
"set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
set backspace=indent,eol,start
set wildmode=list:longest,full
set splitright
set splitbelow
vnoremap < <gv
vnoremap > >gv
for s:i in range(1, 9)
  " <Leader>[1-9] move to window [1-9]
  execute 'nnoremap <Leader>' . s:i . ' :' . s:i . 'wincmd w<CR>'
  " <Leader><leader>[1-9] move to tab [1-9]
  execute 'nnoremap <Leader><Leader>' . s:i . ' ' . s:i . 'gt'
  " <Leader>b[1-9] move to buffer [1-9]
  execute 'nnoremap <Leader>b' . s:i . ' :b' . s:i . '<CR>'
endfor
unlet s:i
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^





if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.config/nvim/plugged') 
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'neomake/neomake'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'pangloss/vim-javascript'
Plug 'flazz/vim-colorschemes'
Plug 'felixhummel/setcolors.vim'
Plug 'mxw/vim-jsx'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/space-vim-dark'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/YouCompleteMe'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'
Plug 'guns/vim-clojure-static'
Plug 'kien/rainbow_parentheses.vim'
Plug 'venantius/vim-cljfmt'

"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif
call plug#end()

map , :NERDTreeToggle<CR>
map e :%Eval<CR>
hi clear SignColumn
let g:ctrlp_working_path_mode = 'c'

let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END


set conceallevel=0
"let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_folding_disabled = 1
set noshowmode
colorscheme 1989
autocmd FileType markdown colorscheme space-vim-dark
call neomake#configure#automake('nrwi', 500)
let g:python3_host_prog = '/usr/local/bin/python3'
let g:deoplete#enable_at_startup = 1

