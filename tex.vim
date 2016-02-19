"""""""""""""""""""""""""""""""""""""
" THIS FILE BELONGS IN SUBMODULE ~/.vim/bundle/latex-suite/ftplugin/   
" IT MUST BE MOVED THERE MANUALLY. TRY TO UPDATE HERE AS CHANGES ARE MADE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn off checking for makefile. This prevents latex-suite from using c/c++
"makefile, but also may cause issues actually using a makefile for latex...
let g:Tex_UseMakefile = 0

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf = 'okular 2>/dev/null'
