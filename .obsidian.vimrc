" prepare for leader keys
unmap ,
unmap <Space>

" use system clipboard
set clipboard=unnamed

" softtab
" set tabstop=2

" Clear line
nmap ,d ^D

" move cursor to comfortable reading position
map ,z zz

map ,<Space> :noh

" map - and = decrease and increase numbers. 
noremap = <C-a>
noremap - <C-x>
vmap + g<C-a>
vmap _ g<C-x>

" simple folding
exmap foldall obcommand editor:fold-all
map Z :foldall
exmap unfoldall obcommand editor:unfold-all
map X :unfoldall

" easy window movement
" TODO
exmap focustop obcommand editor:focus-top
exmap focusbottom obcommand editor:focus-bottom
exmap focusleft obcommand editor:focus-left
exmap focusright obcommand editor:focus-right
nmap <Space>wh :focusleft
nmap <Space>wl :focusright
nmap <Space>wj :focusbottom
nmap <Space>wk :focustop

" So we don't have to press shift when we want to get into command mode.
" TODO this doesn't work yet
" noremap ; :
" noremap : $
map ; $

" shift-u redo
nmap U <C-r>

" jh delete last word in insert mode
imap jh <C-w>

" jl go to end
imap jl <C-[>A

" Use jk to leave insert mode and command line mode.
imap jk <C-[>

" Use jv to paste in insert mode
imap jv <C-r><C-p>"

" use jt to insert TODO
imap jt TODO

" join line with with ,j
noremap ,j J

" split window vertically and horizontally
" TODO
exmap splitv obcommand workspace:split-vertical
exmap splith obcommand workspace:split-horizontal
exmap closepane obcommand workspace:close
nmap <Space>wv :splitv
nmap <Space>wd :splith
nmap <Space>wq :closepane

" Y copy to end of line
nmap Y y$

" save all files
exmap savefile obcommand editor:save-file
nmap ,w :savefile

" standard movement overhaul

" move more quickly with shift
" Visual line nav, not real line nav
" If you wrap lines, vim by default won't let you move down one line to the
" wrapped portion. This fixes that.
map j gj
map k gk

noremap h b
noremap l e
noremap H B
noremap L E
noremap w h
noremap e l
map J 5j
map K 5k
noremap G ^
" noremap : $
noremap gG G
noremap <M-j> <C-d>
noremap <M-k> <C-u>
noremap <M-S-j> G
noremap <M-S-k> gg

" navigation in insert mode with ctrl hjkl
" inoremap <C-h> <Left>
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-l> <Right>

" indent with shift-[ and shift-]
nmap { <<
nmap } >>
vmap { <gv
vmap } >gv

" jump back and forth
exmap back obcommand app:go-back
nmap m :back
exmap forward obcommand app:go-forward
nmap M :forward 

" quit visual mode with ,space
vmap ,<Space> <C-[>

" search word under cursor
nmap F *N

" use leader s to start replacing, and leader S to start replacing whole document 
" nmap ,s :s/
" nmap ,S :%s/
" vmap ,s :s/\%V
" vmap ,S :s/
" nmap ,*s :s/\<<C-r><C-w>\>/
" nmap ,*S :%s/\<<C-r><C-w>\>/

" use dw instead of daw etc
noremap dw daw
noremap cw ciw
noremap yw yiw
noremap dW daW
noremap cW ciW
noremap yW yiW
noremap d) di)
noremap c) ci)
noremap y) yi)
noremap d] di]
noremap c] ci]
noremap y] yi]
noremap d} di}
noremap c} ci}
noremap y} yi}
noremap d> di>
noremap c> ci>
noremap y> yi>
noremap d' di'
noremap c' ci'
noremap y' yi'
noremap d" di"
noremap c" ci"
noremap y" yi"
noremap dt dit
noremap ct cit
noremap yt yit
noremap dn dgn
noremap cn cgn

map <M-j> <C-d>

" visual copy without moving
" vnoremap y y']

" select last visual
noremap ,v gv

" use t to jump brackers
noremap t %

" other commands

exmap followlink obcommand editor:follow-link
nmap <Space>jo :followlink

exmap switcheropen obcommand switcher:open
nmap <Space>n :switcheropen
nmap <Space>if :switcheropen

exmap fileexploreropen obcommand file-explorer:open
nmap <Space>jf :fileexploreropen

exmap backlinkopen obcommand backlink:open
nmap <Space>jb :backlinkopen

exmap graphopen obcommand graph:open
nmap <Space>jg :graphopen

exmap outlineopen obcommand outline:open
nmap <Space>js :outlineopen

exmap outgoinglinkopen obcommand outgoing-links:open
nmap <Space>jB :outgoinglinkopen

exmap commandpalette obcommand command-palette:open
nmap <Space>x :commandpalette

exmap globalsearch obcommand global-search:open
nmap <Space>id :globalsearch

exmap switchersymbols obcommand darlal-switcher-plus:switcher-plus:open-symbols
nmap <Space>is :switchersymbols

map <Space>f /

exmap renameheading obcommand editor:rename-heading
nmap <Space>jr :renameheading

exmap showcalendar obcommand calendar:show-calendar-view
nmap <Space>jc :showcalendar

exmap randomnote obcommand random-note
nmap <Space>jR :randomnote

exmap inserttemplate obcommand insert-template
nmap <Space>jt :inserttemplate

exmap dailynotes obcommand daily-notes
nmap <Space>jT :dailynotes

" surround
exmap surroundbrace surround [ ]
vmap <Space>s[ :surroundbrace
vmap <Space>s] :surroundbrace
exmap surroundcbrace surround { }
vmap <Space>s{ :surroundcbrace
vmap <Space>s} :surroundcbrace
exmap surroundparen surround ( )
vmap <Space>s( :surroundparen
vmap <Space>s) :surroundparen
exmap surroundsquote surround ' '
vmap <Space>s' :surroundsquote
exmap surrounddquote surround " "
vmap <Space>s" :surrounddquote
exmap surroundstar surround * *
vmap <Space>s* :surroundstar
exmap surroundcode surround ` `
vmap <Space>s` :surroundcode

nmap <C-j> <C-d>zz
nmap <C-k> <C-u>zz