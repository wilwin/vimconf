set nocompatible
set noeb
set autoindent
set softtabstop=4
set nobackup
set noswapfile
set hlsearch
set incsearch
set smartindent
set encoding=utf-8 
set fileencodings=ucs-bom,utf-8,chinese

" Enable syntax highlight
syntax enable
 
" Show line number
set nu
" show matching bracets
set showmatch
 
" Basic editing options
 
set tabstop=4  
set shiftwidth=4  
set expandtab  

set smarttab
set lbr
set tw=0
 
"Auto indent
set ai
 
" Smart indet
set si
 
" C-style indeting
set cindent
 
" Wrap lines
set wrap

" NERDTree
map <F2> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 1
let Tlist_Show_Menu = 0
let Tlist_Show_One_File = 0
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40
let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'
let Tlist_Auto_Open=1 

map <F11> :call SyntaxCheck()<CR>
func! SyntaxCheck()
  let ext = expand("%:e")
  if ext=='php'
  exec "w" 
  exec "!php -l %"
  return
  else
  exec "!echo '好像不是php文件'"
  endif
  endfunc

map <F10> :call CompileRunGplusplus()<CR>
func! CompileRunGplusplus()
  let ext = expand("%:e")
  if ext=='php'
  exec "w" 
  exec "!php %"
  return
  elseif ext=='lua'
  exec "w" 
  exec "!lua %"
  return
  else
  exec "!echo '好像不是php、lua文件'"
  endif
  endfunc

map <F12> :call SyncDev()<CR>
func! SyncDev()
  exec "!make"
  endfunc

inoremap <C-P> <ESC>:call PhpDocSingle()<CR>
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR> 

nmap <F5> <Esc>:tabprevious<CR>
imap <F5> <Esc>:tabprevious<CR>
nmap <F6> <Esc>:tabnext<CR>
imap <F6> <Esc>:tabnext<CR>
nmap <F4> <Esc>:tabnew<CR>
imap <F4> <Esc>:tabnew<CR>
map <F9> :TlistToggle<cr>

""""""
"add ctrl+num to switch vim tab
""""""
"map <C-F1> <ESC>:Dox<CR>
