
set nu
set noautoindent
set nocindent
set nosmartindent
syntax on
set paste
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP
autocmd VimEnter * NERDTree | wincmd p
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


" Plugin manager :
call plug#begin()
"Plug 'https://github.com/joshdick/onedark.vim.git' " theme
Plug 'catppuccin/vim', { 'as': 'catppuccin' } " theme
Plug 'https://github.com/preservim/nerdtree.git'   " file explorer
" Plug 'https://github.com/sheerun/vim-polyglot.git' " syntax highligth 
Plug 'itchyny/lightline.vim'                       " status bar
"Plug 'hugolgst/vimsence'                           " discord status
Plug 'junegunn/fzf.vim'                            " file search
Plug 'lervag/vimtex'                               " latex
Plug 'frazrepo/vim-rainbow'                        " brackets color
Plug 'preservim/nerdcommenter'                     " multi-line commenting
Plug 'github/copilot.vim'                          " github copilot
Plug 'wuelnerdotexe/vim-astro'                     " syntax highlight for astro
call plug#end()


" vim rainbow
let g:rainbow_active = 1

" vim astro
let g:astro_typescript = 'enable'
let g:astro_stylus = 'enable'

" nerdcommenter
filetype plugin on
let g:NERDCreateDefaultMappings = 1


" vim sence :
"let g:vimsence_discord_flatpak=1
"let g:vimsence_small_text = 'giga chad vim user'
"let g:vimsence_small_image = 'vim'
"let g:vimsence_editing_details = 'Editing: {}'
"let g:vimsence_editing_state = 'Working on: {}'
"let g:vimsence_file_explorer_text = 'In NERDTree'
"let g:vimsence_file_explorer_details = 'Looking for files'
"let g:vimsence_custom_icons = {'scm': 'scheme'}


" color scheme :
if (empty($TMUX))
    if (has("termguicolors"))
        set termguicolors
    endif
endif

syntax on 
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme catppuccin_macchiato


" Lightline :
set laststatus=2
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'catppuccin_macchiato',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'readonly', 'filename', 'modified' ] ]
  \ },
  \}


" transparency 
let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        let t:is_transparent = 0
    endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>
