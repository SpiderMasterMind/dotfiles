execute pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

autocmd StdinReadPre * let s:std_in=1

autocmd Bufread,BufNewFile *.hbs set filetype=html

let mapleader = "`"
imap aa <esc>
nmap <Leader><CR> O<Esc>
nmap <CR> o<Esc>
nmap ; :

set tabstop=2
set clipboard=unnamed

set autoindent
set shiftwidth=2
set number
set cursorline
set hlsearch
set incsearch
set wildmenu

" ctag jumping stuff
" project: ctags -R .
" project gems: ctags --exclude=.git --exclude='*.log' -R * `bundle show --paths`
set tags+=gems.tags
" set autochdir
set tags+=./tags;


set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
nmap <Leader>b :Buffers<CR>
nmap <Leader>r :Ack<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>f :Ag<CR>
nmap <Leader>h :History<CR>
nmap <Leader>l :Lines<CR>

colorscheme vividchalk

set expandtab

" Ag fzf preview window
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
