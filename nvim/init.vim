set nocompatible              " be iMproved, required
filetype off			" required
syntax on 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'scrooloose/nerdtree'

Plugin 'https://github.com/tpope/vim-surround'

Plugin 'wting/rust.vim'

Plugin 'Lokaltog/vim-powerline'

Plugin 'https://github.com/wincent/Command-T'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
set laststatus=2
"
"Bracket autocompletion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"Parenthesis autocompletion
"inoremap (      ()<Left>
"inoremap (<CR>  (<CR>)<Esc>O
"inoremap (     (
"inoremap ()     ()

"Relative numbers
set relativenumber

"html bindings
autocmd FileType html inoremap ;h<tab> <!DOCTYPE html><Enter><html lang="es"><Enter><head><Enter><meta charset="utf-8"><Enter></head><Enter><body><Enter></body><Enter></html>

autocmd FileType html inoremap ;p<tab> <p></p><Space><Esc>FpT>i

autocmd FileType html inoremap ;d<tab> <div></div><Space><Esc>FdT>i

autocmd FileType html inoremap ;a<tab> <a href=""></a><Space><Esc>F"i

autocmd FileType html inoremap ;t<tab> <table border="1"><Enter><tr></tr><Enter></table><Esc>

autocmd FileType html inoremap ;dc<tab> <div class=" "> </div>

autocmd FileType html inoremap ;l<tab> <link href=" " rel="stylesheet">

autocmd FileType html inoremap ;img<tab> <img src="">

autocmd FileType html inoremap ;s<tab> <span class=""> </span>

"c++ bindings

autocmd FileType cpp inoremap ;main<tab> <Enter><Enter>int main()<Enter>{<Enter><Enter>return 0; <Enter>}

autocmd FileType cpp inoremap ;inc<tab> #include <><Space><Esc>F>i

autocmd FileType cpp inoremap ;if<tab> if()<Enter>{<Enter><Enter>}<Space><Esc>

autocmd FileType cpp inoremap ;for<tab> for(int i=0;i < x;i++)<Enter>{<Enter><Enter>}<Esc>BBBxi

autocmd FileType cpp inoremap ;t<tab> template<typename T>

autocmd FileType cpp inoremap ;while<tab> while()<Enter>{<Enter><Enter>}

autocmd FileType cpp inoremap ;struct<tab> struct x<Enter>{<Enter><Enter>};<Esc>BBBBxi



"c bindings
autocmd FileType c inoremap ;main<tab> #include<stdio.h><Enter><Enter>int main()<Enter>{<Enter><Enter>return 0;<Enter>} 



"LaTeX binds
"
autocmd FileType tex inoremap ;s \documentclass{article}<Enter>\usepackage[utf8]{inputenc}<Enter>\usepackage[T1]{fontenc}<Enter>\author{Karol Ciechlecki}<Enter>\title{}<Enter><Enter>\begin{document}<Enter><Enter>\maketitle<Enter><Enter><Enter><Enter><Enter><Enter>\end{document}


"r markdown
autocmd FileType rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>



