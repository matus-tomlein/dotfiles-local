scriptencoding utf-8
set encoding=utf-8

let maplocalleader = ","

" Automatically wrap at 80 characters for Markdown and Latex
autocmd BufRead,BufNewFile *.md,*.tex setlocal textwidth=85

" Remap Snipmate
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"

" Custom config
set guifont=Monaco:h12
set relativenumber

" Search
set hlsearch
nmap <Leader>h :nohlsearch<CR>
set ignorecase

set exrc
set secure
set guioptions-=r
set guioptions-=L

" Highlight current line in insert mode
autocmd InsertEnter,InsertLeave * set cul!

cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" bind K to grep word under cursor
nnoremap <Leader>g :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap <Leader>/ :Ag<SPACE>

" folder explore
nmap <Leader>s :Sexplore<CR>
nmap <Leader>v :Vexplore<CR>
nmap <Leader>e :Explore<CR>

" yank to system clipboard
vmap <Leader>y "*y

" select all
nmap <Leader>a ggVG

" reload file
nmap <Leader>r :e!<CR>

map! jj <ESC>

" tabs
nmap <Leader>1 1gt
nmap <Leader>2 2gt
nmap <Leader>3 3gt
nmap <Leader>4 4gt
nmap <Leader>5 5gt
nmap <Leader>6 6gt
nmap <Leader>7 7gt
nmap <Leader>8 8gt
nmap <Leader>9 9gt
nmap <Leader>t :tabe<CR>

" ctrlp
nmap <Leader>p :CtrlPMixed<CR>

" shorter timeout because of waiting after pressing ESC
set timeoutlen=1000 ttimeoutlen=0

" redraw shortcut
nmap <Leader>d :redraw!<CR>

"enable mouse control
set mouse=a

" NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-b> :NERDTreeFind<CR>


" Accept fat-fingering the :wq and similar
if has("user_commands")
  command! -bang -nargs=? -complete=file E e<bang> <args>
  command! -bang -nargs=? -complete=file W w<bang> <args>
  command! -bang -nargs=? -complete=file Wq wq<bang> <args>
  command! -bang -nargs=? -complete=file WQ wq<bang> <args>
  command! -bang Wa wa<bang>
  command! -bang WA wa<bang>
  command! -bang Q q<bang>
  command! -bang QA qa<bang>
  command! -bang Qa qa<bang>
endif
