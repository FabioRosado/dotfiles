"===========================
" Plugins
"===========================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set runtimepath^=~/.vim/bundle/vim-airline/plugin/airline.vim
set runtimepath^=~/.vim/bundle/vim-signify/plugin/signify.vim

"===========================
" FabioRosado settings
"===========================
syntax on
set number
set smartindent
set tabstop=2
set softtabstop=2
set expandtab
set showmatch
set incsearch
set hlsearch

" Settings for Syntastic plugin 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" Makes error window smaller if no errors found
function! SyntasticCheckHook(errors)
    if !empty(a:errors)
        let g:syntastic_loc_list_height = min([len(a:errors), 10])
    endif
endfunction

" Settings for Signify
let g:signify_vcs_list              = [ 'git', 'hg' ]
let g:signify_cursorhold_insert     = 1
let g:signify_cursorhold_normal     = 1
let g:signify_update_on_bufenter    = 0
let g:signify_update_on_focusgained = 1

" Settings for Code Stats
call plug#begin('~/.vim/plugged')

let g:codestats_api_key = 'SFMyNTY.Um1GaWFXOVNiM05oWkc4PSMjT1RneU9BPT0.Er5pbpbUtmElfaz_BXZvTAYxL0Yq1wH_zQlxQ8STdEc'

" Optional: configure vim-airline to display status
"let g:airline_section_x = airline#section#create_right(['tagbar', 'filetype', '%{CodeStatsXp()}'])

"===========================
" Start pathogen
"===========================
execute pathogen#infect()
call pathogen#helptags()

call plug#end()
