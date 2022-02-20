runtime! archlinux.vim

set nu
syntax on
set tabstop=4
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
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/sheerun/vim-polyglot.git'
Plug 'itchyny/lightline.vim'
Plug 'hugolgst/vimsence'
Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex'
call plug#end()




" vim sence :
let g:vimsence_discord_flatpak=1
let g:vimsence_small_text = 'giga chad vim user'
let g:vimsence_small_image = 'vim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
let g:vimsence_file_explorer_text = 'In NERDTree'
let g:vimsence_file_explorer_details = 'Looking for files'
let g:vimsence_custom_icons = {'filetype': 'iconname'}




" One Dark color scheme :
if (empty($TMUX))
    if (has("termguicolors"))
        set termguicolors
    endif
endif

syntax on 
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"let g:onedark_termcolors=256
colorscheme onedark




" Lightline :
set laststatus=2
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'readonly', 'filename', 'modified' ] ]
  \ },
  \}
