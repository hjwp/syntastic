"============================================================================
"File:        jslint-redirect.vim
"Description: Syntax checking plugin that uses jslint
"Maintainer:  LCD 47 <lcd047 at gmail dot com>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"             
" requires jslint v <= 0.1.11
"============================================================================

if exists("g:loaded_syntastic_html_jslint_checker")
    finish
endif
let g:loaded_syntastic_html_jslint_checker = 1

runtime! syntax_checkers/javascript/jslint.vim

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'html',
    \ 'name': 'jslint',
    \ 'redirect': 'javascript/jslint'})

