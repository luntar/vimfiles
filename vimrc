execute pathogen#infect()
syntax on 
filetype plugin indent on

autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /

set noswapfile
set noeb

" Turring off the middle mouse button because
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

if has('gui_running')
  set co=100
  set lines=40
endif

" SESSION STUFF
let g:session_autosave = 'no'
let g:session_autoload = 'no'

nnoremap <silent> S0    :SaveSession default<CR>
nnoremap <silent> s0    :OpenSession default<CR>
nnoremap <silent> S1    :SaveSession one<CR>
nnoremap <silent> s1    :OpenSession one<CR>
nnoremap <silent> S2    :SaveSession two<CR>
nnoremap <silent> s2    :OpenSession two<CR>
nnoremap <silent> S3    :SaveSession three<CR>
nnoremap <silent> s3    :OpenSession three<CR>
nnoremap <silent> S4    :SaveSession four<CR>
nnoremap <silent> s4    :OpenSession four<CR>

nnoremap <silent> S5    :SaveSession five<CR>
nnoremap <silent> s5    :OpenSession five<CR>
nnoremap <silent> S6    :SaveSession six<CR>
nnoremap <silent> s6    :OpenSession six<CR>
nnoremap <silent> S7    :SaveSession seven<CR>
nnoremap <silent> s7    :OpenSession seven<R>
nnoremap <silent> S8    :SaveSession eight<CR>
nnoremap <silent> s8    :OpenSession eight<CR>
nnoremap <silent> S9    :SaveSession nine<CR>
nnoremap <silent> s9    :OpenSession nine<CR>

set nowb
set nocompatible                " vi compatible is LAME

set ai                          " set auto-indenting on for programming
set number

set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set encoding=utf-8              " Needed to show Unicode glyphs
set spelllang=en_us
"
set incsearch
set ignorecase
set hlsearch


set showmode                    " show the current mode
" Backup file related settings
set backup
set backupdir=~/vim_backup
set autowrite        " automatically writes when changing files.
hi LineNr term=underline ctermfg=Yellow guifg=lightblue

"set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,resize,tabpages,winsize,winpos
 map <leader>r :NERDTreeFind<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeDirArrows=0
let NERDTreeKeepTreeInNewTab=1
let NERDTreeHijackNetrw=1

" function! NERDTreeInitAsNeeded()
"     redir => bufoutput
"     buffers!
"     redir END
"     let idx = stridx(bufoutput, "NERD_tree")
"     if idx > -1
"         NERDTreeMirror
"         NERDTreeFind
"         wincmd l
"     endif
" endfunction


"autocmd BufEnter * lcd %:p:h
" Taglist plugin mapping
noremap <silent> <Leader>t :TlistToggle<CR>

let g:jellybeans_use_lowcolor_black = 0
"
"let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme = 'solarized256' 

" Taglist plugin config
let Tlist_clojure_settings = 'lisp;f:function'
let Tlist_Exit_OnlyWindow=1

let Tlist_Use_Right_Window = 0
let Tlist_Inc_Winwidth = 0
let Tlist_WinWidth = 25
let Tlist_GainFocus_On_ToggleOpen= 1
let Tlist_Ctags_Cmd = 'ctags'
let Tlist_Show_One_File = 0

" Supper cool greping
nnoremap <silent> sm     :Bck <cword><CR>

let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 400
let g:fuf_mrucmd_maxItem = 400
nnoremap <silent> sj     :FufBuffer<CR>
nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> sK     :FufFileWithFullCwd<CR>
nnoremap <silent> s<C-k> :FufFile<CR>
nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
nnoremap <silent> sl     :FufCoverageFileChange<CR>
nnoremap <silent> sL     :FufCoverageFileChange<CR>
nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> sD     :FufDirWithFullCwd<CR>
nnoremap <silent> s<C-d> :FufDir<CR>
nnoremap <silent> sn     :FufMruFile<CR>
nnoremap <silent> sN     :FufMruFileInCwd<CR>
nnoremap <silent> sc     :FufMruCmd<CR>
nnoremap <silent> su     :FufBookmarkFile<CR>
nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
nnoremap <silent> si     :FufBookmarkDir<CR>
nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
nnoremap <silent> st     :FufTag<CR>
nnoremap <silent> sT     :FufTag!<CR>
nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
nnoremap <silent> s,     :FufBufferTag<CR>
nnoremap <silent> s<     :FufBufferTag!<CR>
vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
nnoremap <silent> s}     :FufBufferTagWithCursorWord!<CR>
nnoremap <silent> s.     :FufBufferTagAll<CR>
nnoremap <silent> s>     :FufBufferTagAll!<CR>
vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
nnoremap <silent> sg     :FufTaggedFile<CR>
nnoremap <silent> sG     :FufTaggedFile!<CR>
nnoremap <silent> so     :FufJumpList<CR>
nnoremap <silent> sp     :FufChangeList<CR>
nnoremap <silent> sq     :FufQuickfix<CR>
nnoremap <silent> sy     :FufLine<CR>
nnoremap <silent> sh     :FufHelp<CR>
nnoremap <silent> sE     :FufEditDataFile<CR>
nnoremap <silent> sr     :FufRenewCache<CR>

"let g:vimclojure#WantNailgun = 1
"let g:vimclojure#NailgunServer = "127.0.0.1"
"let g:vimclojure#NailgunPort = "2113"
"let g:vimclojure#HighlightBuiltins = 1
"let g:vimclojure#ParenRainbow = 1
"let g:vimclojure#DynamicHighlighting=1
"let g:paredit_mode = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Quit ALL
 map <leader>a :wqall<CR>

set novisualbell

 map <leader>h :%s//
" map <leader>t :TlistOpen<cr>
" map <leader>T :TlistClose<cr>
 nmap <silent> <leader><space> :nohlsearch<CR>

map <C-l> W
map <C-h> B
map <C-k> 5k
map <C-j> 5j

map <leader>u :UndotreeToggle<cr>

" Quickly change the string syntax hi Color
map sa :hi Constant guifg=#799d6a<cr>
map sA :hi Constant guifg=#ffffaf<cr>
 "
" Shortcuts using <leader>
" Spelling

" use jj to quickly escape to normal mode while typing 
 inoremap jj <ESC>
" Ctrl-space for omni-complete
inoremap <c-Space> <c-x><c-o>


set scrolloff=4      " keep a buffer around the cursor by scrolling the window
set whichwrap=<,>,h,l,b,s  "cursor keys "wrap"
set nowrap
"
"set background=dark             " Use colours that work well on a dark
map <F5> :setlocal spell! spelllang=en_us<CR>

if has("win32") || has("win64")
    let windows=1
    let vimfiles="~/vimfiles"
    let sep=";"
    nmap <silent> <leader>v :e ~/_vimrc<CR>
    nmap <silent> <leader>s :e ~/vimfiles/bundle/snipmate-snippets<CR>
    
    colorscheme jellyx              " Other goodones:jellybeans
    " On Windows, this will open the expolorer
    nnoremap <silent> se :silent !start explorer.exe %:p:h<CR><CR>    
else
    let windows=0
    let vimfiles=$HOME . "/.vim"
    let sep=":"
    nmap <silent> <leader>v :e ~/.vimrc<CR>
    nmap <silent> <leader>s :e ~/.vim/bundle/snipmate-snippets<CR>
    nnoremap <silent> se    :!open -R %<CR><CR>
    colorscheme jellyx              " Other goodones:jellybeans
    
    " On OSX, this will open the finder
    nnoremap <silent> se    :!open -R %<CR><CR>    
    
endif

autocmd! bufwritepost .vimrc source %
if has('gui_running')
  set guifont=Consolas:h10:cANSI
endif
set guioptions-=T
"set guioptions-=m
set guioptions-=r
set guioptions-=L

	""" Code folding options
	nmap <leader>f0 :set foldlevel=0<CR>
	nmap <leader>f1 :set foldlevel=1<CR>
	nmap <leader>f2 :set foldlevel=2<CR>
	nmap <leader>f3 :set foldlevel=3<CR>
	nmap <leader>f4 :set foldlevel=4<CR>
	nmap <leader>f5 :set foldlevel=5<CR>
	nmap <leader>f6 :set foldlevel=6<CR>
	nmap <leader>f7 :set foldlevel=7<CR>
	nmap <leader>f8 :set foldlevel=8<CR>
	nmap <leader>f9 :set foldlevel=9<CR>
" Force cursorline to be an underline. Otherwise, it's hard to distinguish
" " between cursorline and inactive window borders.
hi CursorLine ctermbg=233 guibg=#121212
set cursorline
" smartindent causes annoying comment handling in lanugages that
 " use # as the comment delimiter (Python, Tcl, etc)
 " http://vim.wikia.com/wiki/Restoring_indent_after_typing_hash
 " set smartindent
 " set cindent
let wiki = {}
let wiki.path = '~/vimwiki/'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'clojure': 'clj'}
let g:vimwiki_list = [wiki]
 set autoindent
 set shiftwidth=2
 set tabstop=2
 set shiftround       " round indents to multiples of shiftwidth
 set expandtab        " replace tabs with spaces (stupid tabs)
 set smarttab
 set formatoptions=tcoq2l
 set showbreak=X\        " put a little string in wrapped lines
 set bs=2         " allow backspacing over everything in insert MODE_Explain
"openurl.vim bindings
nnoremap <silent> <Leader>ou :OpenUrlInBrowser<cr>

function! s:RunTests(bang) 
  let req = (a:bang ? 'Require!' : 'Require') 
  execute req 
  execute 'Eval (clojure.test/run-tests)' 
endfunction 

command! -buffer -bar -bang RunTests :Require<bang>|Eval (clojure.test/run-tests)

" A function to create a class name form the file name
function! Cucfirst(str)
	return substitute(strpart(a:str,0,strlen(a:str)-4), '\w\+', '\u\0', "")
endfunction
 
function! CiFilePos(str)
  if a:str =~ ".\.system.\."
    return '.' . matchstr(a:str, "\/system/.*$")
  elseif a:str =~ ".\.application.\."
    return '.' . matchstr(a:str, "\/application/.*$")
  else
    return a:str
endfunction

" SPELLING CONTROL 
nnoremap <silent> tt :setlocal spell! spelllang=en_us<CR>
nnoremap <silent> tn ]s
nnoremap <silent> tp [s
nnoremap <silent> ta zg
nnoremap <silent> t? z=

" Easy window split
nnoremap <silent> ts  <C-w>s<cr>
nnoremap <silent> tv  <C-w>v<cr>

" Window Navigation - with out the ctrl key
nnoremap <silent> tl  <C-w>l<cr>
nnoremap <silent> th  <C-w>h<cr>
nnoremap <silent> tk  <C-w>k<cr>
nnoremap <silent> tj  <C-w>j<cr>
nnoremap <silent> tr  <C-w>r<cr><C-w><C-w>

" Close the window
nnoremap <silent> tc  <C-w>c<cr>
nnoremap <leader>c  <C-w>c<cr>
" Close the buffer, leave the window
nnoremap <silent> tC  :Bclose<cr>
"
" Window Sizing
" Try to make all windows the Same size
nnoremap <silent> t= <C-w>=
nnoremap <silent> t] 8<C-w>>
nnoremap <silent> t[ 8<C-w><
nnoremap <silent> T] 8<C-w>+
nnoremap <silent> T[ 8<C-w>-

" Map a key to run the 'q' macro 
nnoremap <silent> tm @q

" Close the windows just bellow current
nnoremap <silent> tK  <C-w>j<cr><C-w>c<cr> 

" Select the current word - has issues if on a paren...
nnoremap <silent> sw bvEh 
map sv v$h 

" call the current file typs make/build 
nnoremap sP :w<CR> :silent make<CR>

" Folding while in a clojure file
nnoremap sf :call StartClojureFolding()<CR>zM<CR>
nnoremap sF zR<CR>
"
" Quick fix mode: command line msbuild error format 
au FileType cs set errorformat=\ %#%f(%l\\\,%c):\ error\ CS%n:\ %m

"function g:undotree_CustomMap()
"""    map <c-n> J
"    map <c-p> K
"endfunction

function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction

vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>


if !exists("g:loaded_togglehex") 
   let g:loaded_togglehex = 1

  ""
" ex command for toggling hex mode - define mapping if desired
command -bar Hexmode call ToggleHex()

" helper function to toggle hex mode
function ToggleHex()
  " hex mode should be considered a read-only operation
  " save values for modified and read-only for restoration later,
  " and clear the read-only flag for now
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    " save old options
    let b:oldft=&ft
    let b:oldbin=&bin
    " set new options
    setlocal binary " make sure it overrides any textwidth, etc.
    let &ft="xxd"
    " set status
    let b:editHex=1
    " switch to hex editor
    %!xxd
  else
    " restore old options
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    " set status
    let b:editHex=0
    " return to normal editing
    %!xxd -r
  endif
  " restore values for modified and read only state
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction
endif

" Binary HEX Mappings
nnoremap <silent> sb :Hexmode<CR> 
map tf :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

