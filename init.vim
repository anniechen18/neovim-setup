" Pull in the plugins as specified in the plugin.vim file
source $HOME/.config/nvim/plugin.vim

" Settings for color scheme
set termguicolors
colorscheme NeoSolarized
let g:neosolarized_contrast = "high"

" Set syntax highlight on
syntax on

" Set backspace to work like typical editor backspace
set backspace=indent,eol,start

" Replace tabs with spaces
set expandtab

" Set line numbers on the left hand side
set number

" Open new split panes to right and below
set splitright
set splitbelow

" Turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" Start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-t> :call OpenTerminal()<CR>

" Moving between windows is now control j, k, h, l
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

""" NERDTree settings 
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open NERDTreeToggle with control n
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

""" FZF settings

" Open FZF with control f
nnoremap <C-f> :FZF<CR>

" Control t, s, v, for splits
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" let W == w and Q == q
command! W w
command! Wq wq
command! Q q

""""" Coc
" Use tab for trigger completion with characters ahead and navigate

" suggest.noselect was added to coc-settings.json so that tab-ing will go to
" the first suggestion instead of the next one
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


