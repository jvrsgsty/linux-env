"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~/.vimrc (configuration file for vim only)
" # AUTHOR:
"       Javier Sagastuy Brena
"
" # LAST EDIT:
"       04.05.15
"
" # SECTIONS:
"       -> Skeletons
"       -> Appearance
"       -> Navigation
"       -> File Types Syntax
"       -> CygWin Fixes

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Skeletons
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! SKEL_spec()
        0r /usr/share/vim/current/skeletons/skeleton.spec
        language time en_US
        let login = system('whoami')
        if v:shell_error
           let login = 'unknown'
        else
           let newline = stridx(login, "\n")
           if newline != -1
                let login = strpart(login, 0, newline)
           endif
        endif
        let hostname = system('hostname -f')
        if v:shell_error
            let hostname = 'localhost'
        else
            let newline = stridx(hostname, "\n")
            if newline != -1
                let hostname = strpart(hostname, 0, newline)
            endif
        endif
        exe "%s/specRPM_CREATION_DATE/" . strftime("%a\ %b\ %d\ %Y") . "/ge"
        exe "%s/specRPM_CREATION_AUTHOR_MAIL/" . login . "@" . hostname . "/ge"
        exe "%s/specRPM_CREATION_NAME/" . expand("%:t:r") . "/ge"
endfunction
autocmd BufNewFile      *.spec  call SKEL_spec()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set color scheme for highlighting
":color desert
:color monokai

" set line and column numbers
:set nu
:set ruler

" tab width
:set tabstop=2
:set expandtab
":set shiftwidth=2
:set autoindent
:set smartindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tab navigation like vi
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
"nnoremap tn :tabnew<CR>

" tab navigation like firefox
"nnoremap <C-S-tab> :tabprevious<CR>
"nnoremap <C-tab>   :tabnext<CR>
"nnoremap <C-t>     :tabnew<CR>
"inoremap <C-S-tab> <Esc>:tabprevious<CR>i
"inoremap <C-tab>   <Esc>:tabnext<CR>i
"inoremap <C-t>     <Esc>:tabnew<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => File Types Syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
filetype on

au BufNewFile,BufRead *.spsql set filetype=plsql
au BufNewFile,BufRead *.udfsql set filetype=plsql
au BufNewFile,BufRead *.scala set filetype=scala
au BufNewFile,BufRead *.txt set filetype=none

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CygWin files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" fix backspace not functioning correctly
set backspace=2
"set backspace=indent,eol,space

" set block cursor config for vim on cygwin
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
