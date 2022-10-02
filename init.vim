" init package by packer
lua require('init_pkg_by_packer')

" init nvim cmp: should init before nvim lsp
lua require('init_nvim_cmp')

" init nvim lsp
lua require('init_nvim_lspconfig')

lua require('init_lsp_grammar_guard')

" init telescope
lua require('init_telescope')

" init vim notify
lua require('init_vim_notify')

" colorscheme
colorscheme gruvbox

" init nvim tree
lua require('init_nvim_tree')
nnoremap <leader>v :NvimTreeFindFile<cr>
nnoremap <leader>g :NvimTreeToggle<cr>

" init neogit
lua require('init_neogit')

"
" fzf config
"
"if dein#tap('fzf.vim')
nnoremap <silent> <Leader>ag :Ag <C-R><C-w><CR>
nnoremap <silent> <Leader>rg :Rg <CR>
nnoremap <silent> <c-p> :Files<CR>
"endif

"tagbar
nnoremap <leader>t :TagbarToggle<cr>

set relativenumber
set number

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
