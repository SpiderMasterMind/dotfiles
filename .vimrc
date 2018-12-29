execute pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

autocmd StdinReadPre * let s:std_in=1

autocmd Bufread,BufNewFile *.hbs set filetype=html

imap aa <esc>
set tabstop=2

set clipboard=unnamed

set autoindent
set shiftwidth=2
set number
set cursorline
set hlsearch
set incsearch
set wildmenu

set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
nmap ; :
nmap <Leader>b :Buffers<CR>
nmap <Leader>r :Ack!<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>f :Ag!<CR>
nmap <Leader>h :History<CR>

colorscheme vividchalk

set expandtab


nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
