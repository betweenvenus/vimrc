"           _..--""---.
"          /           ".
"          `            l
"          |'._  ,._ l/"\
"          |  _J<__/.v._/
"           \( ,~._,,,,-)
"            `-\' \`,,j|
"               \_,____J
"          .--.__)--(__.--.
"         /  `-----..--'. j
"         '.- '`--` `--' \\
"        //  '`---'`  `-' \\
"       //   '`----'`.-.-' \\
"     _//     `--- -'   \' | \________
"    |  |         ) (      `.__.---- -'\
"     \7          \`-(               74\\\
"     ||       _  /`-(               l|//7__
"     |l    ('  `-)-/_.--.          f''` -.-"|
"     |\     l\_  `-'    .'         |     |  |
"     llJ   _ _)J--._.-('           |     |  l
"     |||( ( '_)_  .l   ". _    ..__I     |  L
"     ^\\\||`'   '   '"-. " )''`'---'     L.-'`-.._
"          \ |           ) /.              ``'`-.._``-.
"          l l          / / |                      |''|
"           ' \        / /   "-..__                |  |
"           | |       / /          1       ,- t-...J_.'
"           | |      / /           |       |  |
"           J  \  /"  (            l       |  |
"           | ().'`-()/            |       |  |
"          _.-"_.____/             l       l.-l
"      _.-"_.+"|                  /        \.  \
"/"\.-"_.-"  | |                 /          \   \
"\_   "      | |                1            | `'|
"  |ll       | |                |            i   |
"  \\\       |-\               \j ..          L,,'. `/
" __\\\     ( .-\           .--'    ``--../..'      '-..
"   `'''`----`\\\\ .....--'''
"              \\\\                          
 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" autoload vim-plug if not present

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins

call plug#begin('~/.vim/plugged')

Plug 'ap/vim-css-color'

Plug 'tpope/vim-endwise'

Plug 'jiangmiao/auto-pairs'

Plug 'jceb/vim-orgmode'

Plug 'mattn/emmet-vim'

Plug 'tpope/vim-speeddating'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" custom settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" syntax highlighting
syntax on

" disables vi compatibility
set nocompatible

" enables default ruler (https://codeyarns.github.io/tech/2010-11-28-vim-ruler-and-default-ruler-format.html)
set ruler

" disables terrible bell signal, replacing it with a visual cue
set visualbell

" obvious
set encoding=utf-8

" set soft wrap for text
set wrap

" tab sizes and etc
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set noshiftround
set smarttab

" when traversing text, vim will try to leave 6 linse of padding on either
" side of the cursor
set scrolloff=6

" append to matchpairs list
set matchpairs+=<:>

" set screenline to always be visible
set laststatus=2

" map localleader (localleader is a leader key for chords that depend on
" specific filetypes)
let maplocalleader="\<space>"
