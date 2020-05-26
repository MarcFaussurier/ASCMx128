let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/ASCMx128
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +40 sc_main.cpp
badd +0 ~/ASCMx128
badd +95 term://.//74762:/bin/zsh
badd +48 Makefile
badd +19 sources/sc_main.cpp
badd +13 sources/ALU/adder_half.hpp
badd +2 term://.//76948:/bin/zsh
badd +24 includes/ASCMx128.h
badd +6 ~/.config/nvim/init.vim
argglobal
silent! argdel *
$argadd ~/ASCMx128
edit includes/ASCMx128.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd w
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 191) / 382)
exe '2resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 2resize ' . ((&columns * 44 + 191) / 382)
exe '3resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 3resize ' . ((&columns * 144 + 191) / 382)
exe '4resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 4resize ' . ((&columns * 189 + 191) / 382)
exe 'vert 5resize ' . ((&columns * 160 + 191) / 382)
argglobal
enew
file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr=vimreg,vimendreg
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr=vimreg,vimendreg
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 18 - ((14 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
wincmd w
argglobal
if bufexists('sources/sc_main.cpp') | buffer sources/sc_main.cpp | else | edit sources/sc_main.cpp | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr=vimreg,vimendreg
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 28 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 028|
wincmd w
argglobal
if bufexists('term://.//76948:/bin/zsh') | buffer term://.//76948:/bin/zsh | else | edit term://.//76948:/bin/zsh | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr=vimreg,vimendreg
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 198 - ((12 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
198
normal! 02|
wincmd w
argglobal
if bufexists('sources/ALU/adder_half.hpp') | buffer sources/ALU/adder_half.hpp | else | edit sources/ALU/adder_half.hpp | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr=vimreg,vimendreg
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
4
normal! zo
let s:l = 35 - ((0 * winheight(0) + 50) / 101)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 09|
wincmd w
5wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 191) / 382)
exe '2resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 2resize ' . ((&columns * 44 + 191) / 382)
exe '3resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 3resize ' . ((&columns * 144 + 191) / 382)
exe '4resize ' . ((&lines * 50 + 52) / 105)
exe 'vert 4resize ' . ((&columns * 189 + 191) / 382)
exe 'vert 5resize ' . ((&columns * 160 + 191) / 382)
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
