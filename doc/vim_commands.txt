# movements
  page up             ctrl-b
  page down           ctrl-f
  word forward        w
  word back           b
  search next         *
  search previous     #
  eof then insert     Go
  relative number     :set relativenumber
  absolute number     :set number
  show mac desktop    f11

# bash
  rerun command       !!

# search/replace
  replace all         :%s/text/replace/g
  replace all confirm :%s/text/replace/gc
  replace all line    :s/text/replace/g
  replace all case-in :%s/text/replace/gi
  global              g
  case insensitive    i
  case sensitive      I

# ctrl p file search
  open fuzzy search   c-p
  navigate up/down    c-k, c-j

# commenting
  comment             V move :norm i#
  uncomment 1 chars   V move :norm x
  uncomment 2 chars   V move :norm x
  reselect last       gv

# copy/paste
  current char copy   yl""
  current word        yw
  to system clipboard "star yy
  from sys clipboard  "star p
  surround with ''    delete i ' c-r "
  
# editing
  recomment           =
  recomment all       gg=G
  replace one char    r
  delete line         D or dd
  del to eol, insert  C or c$
  del line, insert    cc
  yank(copy)          y
  paste above         P
  undo                u
  redo                ctrl-R
  repeat last cmd     .
  delete two lines    dj, dk
  delete/ins quotes   ci" or ci '
  del word insert     cw
  delete<move>insert  c<move>i

# folding
  toggle              za
  close               zc
  open                zo
  open all            zr
  close all           zm

# user interface
  highlight line      :set cursorline
  reload vimrc        :source %

# modes/files
  visual, by char     v
  visual, by line     V
  visual, by block    ctrl-v
  vis, block insert   ctrl-v/I/edit/esc
  replace             R

# nerd tree
  menu                m
  menu, then move     mm

# vimium
  help                ?
  links, open in tab  shift-f 

# mastered
  page up 1/2         ctrl-u
  page down 1/2       ctrl-d
  delete line         dd
  paste               p
  toggle nerd tree    ctrl-n
  swap lines          ddp
  search string       /
  eol and insert      A
  escape insert       jj
  save                space space
  run                 space r
  save and exit       ctrl-zz
  line number move    num-gg
  end of line         $
  start of line       0
  beginning of file   gg
  end of file         G
  insert below        o
  insert above        O 
  toggle panes        ctrl-ww
