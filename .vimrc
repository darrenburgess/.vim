nnoremap <space> <nop>
let mapleader = "\<space>"

execute pathogen#infect()

set showcmd
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype off          " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set encoding=utf-8
set mouse=a
set autoread
au FocusGained,BufEnter * :silent! !
set incsearch
set relativenumber
set number
set cursorline

" control p plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" """" vundle settings
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" """"" end Vundle

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set smartindent
set number

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use"

"disable arrow keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>


"add blank lines
nnoremap <Enter> :call append(line('.'), '')<CR>
nnoremap <S-Enter> :call append(line('.')-1, '')<CR>

"Nerd Tree
let g:NERDTreeWinSize = 30
map <C-n> :NERDTreeToggle<CR>

"color settings
set t_Co=256
colors zenburn

"key remapping
inoremap jj <ESC>
nnoremap <leader><leader> :w<cr>
nnoremap <leader>r :w<cr>:! ruby %<cr>
map ,p obinding.pry<ESC>

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i

"close pair settings and functions
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=ClosePair('}')<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

function ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
 return "\<Right>"
 else
 return a:char
 endif
endf

function CloseBracket()
 if match(getline(line('.') + 1), '\s*}') < 0
 return "\<CR>}"
 else
 return "\<Esc>j0f}a"
 endif
endf

function QuoteDelim(char)
 let line = getline('.')
 let col = col('.')
 if line[col - 2] == "\\"
 "Inserting a quoted quotation mark into the string
 return a:char
 elseif line[col - 1] == a:char
 "Escaping out of the string
 return "\<Right>"
 else
 "Starting a string
 return a:char.a:char."\<Esc>i"
 endif
endf
