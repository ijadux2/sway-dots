" Define the directory where plugins will be installed
call plug#begin('~/.vim/plugged')
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'catppuccin/vim'
call plug#end()

" Enable true colors (required for Catppuccin's full palette)
set termguicolors
set mouse=a
set number
set relativenumber
colorscheme catppuccin_mocha
let g:devicons_conceal_filenames = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'catppuccin_mocha'
" Map Ctrl+n to toggle NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
" Show the hidden dotfiles (optional)
let g:NERDTreeShowHidden = 0
" --- Global Asynchronous Completion & LSP Setup ---

" 1. LSP Buffer Setup (Must be done first)
" This function runs when an LSP server successfully attaches to a file.
function! s:on_lsp_buffer_enabled() abort
    " Set omnifunc to use the LSP client for completion
    setlocal omnifunc=lsp#complete

    " Show signs (diagnostics like errors/warnings)
    setlocal signcolumn=yes

    " Set up common keymaps for quick access to LSP features (e.g., hover, definition)
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> <leader>ca <plug>(lsp-code-action)
endfunction
autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()


" 2. Asyncomplete Auto-Trigger and Keymaps
" The settings below are global and apply to all filetypes.

" Enable auto-completion after a 200ms delay.
let g:asyncomplete_auto_complete_delay = 200
let g:asyncomplete_auto_complete = 1

" Map common keys for seamless navigation of the suggestion popup menu (pum).
" Pressing TAB or ENTER accepts the suggestion if the menu is visible.
inoremap <expr> <Tab>   (pumvisible() ? "\<C-n>" : "\<Tab>")
inoremap <expr> <S-Tab> (pumvisible() ? "\<C-p>" : "\<S-Tab>")
inoremap <expr> <CR>    (pumvisible() ? "\<C-y>" : "\<CR>")

" Manual trigger for completion
inoremap <silent><expr> <c-space> asyncomplete#close_popup() . asyncomplete#force_refresh()

" 3. Register the LSP Source
" This tells asyncomplete to use the vim-lsp client as a source of suggestions
" for ALL filetypes ('*').





