let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/CPUx128
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +29 sc_main.cpp
badd +1 CPUx128.h.gch
badd +1 CPUx128.h
badd +375 term://.//38901:/bin/zsh
badd +0 Makefile
badd +0 term://.//42260:/bin/zsh
badd +0 ~/.viminfo
argglobal
silent! argdel *
$argadd sc_main.cpp
edit CPUx128.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 1resize ' . ((&columns * 127 + 191) / 382)
exe '2resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 2resize ' . ((&columns * 127 + 191) / 382)
exe '3resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 3resize ' . ((&columns * 127 + 191) / 382)
exe '4resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 4resize ' . ((&columns * 127 + 191) / 382)
exe 'vert 5resize ' . ((&columns * 126 + 191) / 382)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr=vimreg,vimendreg
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 06|
wincmd w
argglobal
if bufexists('CPUx128.h') | buffer CPUx128.h | else | edit CPUx128.h | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr=vimreg,vimendreg
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
17,20fold
10,21fold
let s:l = 6 - ((5 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 063|
wincmd w
argglobal
if bufexists('Makefile') | buffer Makefile | else | edit Makefile | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr=vimreg,vimendreg
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 7 - ((6 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 057|
wincmd w
argglobal
if bufexists('term://.//42260:/bin/zsh') | buffer term://.//42260:/bin/zsh | else | edit term://.//42260:/bin/zsh | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr=vimreg,vimendreg
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 652 - ((49 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
652
normal! 08|
wincmd w
argglobal
if bufexists('sc_main.cpp') | buffer sc_main.cpp | else | edit sc_main.cpp | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr=vimreg,vimendreg
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 29 - ((28 * winheight(0) + 50) / 101)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 0
wincmd w
5wincmd w
exe '1resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 1resize ' . ((&columns * 127 + 191) / 382)
exe '2resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 2resize ' . ((&columns * 127 + 191) / 382)
exe '3resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 3resize ' . ((&columns * 127 + 191) / 382)
exe '4resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 4resize ' . ((&columns * 127 + 191) / 382)
exe 'vert 5resize ' . ((&columns * 126 + 191) / 382)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=aFc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
