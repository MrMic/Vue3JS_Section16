let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/DEV/VUE_3_JS_UDEMY/Section16/main-prj-01-starting-setup
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +22 src/main.js
badd +51 ~/DEV/VUE_3_JS_UDEMY/Section16/main-prj-01-starting-setup/src/pages/coaches/CoachesList.vue
badd +2 ~/DEV/VUE_3_JS_UDEMY/Section16/main-prj-01-starting-setup/src/App.vue
badd +23 ~/DEV/VUE_3_JS_UDEMY/Section16/main-prj-01-starting-setup/src/components/coaches/CoachItem.vue
badd +17 ~/DEV/VUE_3_JS_UDEMY/Section16/main-prj-01-starting-setup/src/router.js
badd +1 src/pages/coaches/CoachDetail.vue
argglobal
%argdel
edit src/pages/coaches/CoachDetail.vue
argglobal
balt ~/DEV/VUE_3_JS_UDEMY/Section16/main-prj-01-starting-setup/src/router.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
3,5fold
3,5fold
2,6fold
2,6fold
10,12fold
10,12fold
9,14fold
9,14fold
8,15fold
8,15fold
19,23fold
19,23fold
18,25fold
18,25fold
17,26fold
17,26fold
1,27fold
36,37fold
35,38fold
41,42fold
44,45fold
47,48fold
50,51fold
53,54fold
40,55fold
58,59fold
57,60fold
33,61fold
32,62fold
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=10
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
