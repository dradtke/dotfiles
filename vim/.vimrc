call plug#begin()
Plug 'b4b4r07/vim-hcl'
Plug 'benmills/vimux'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'prabirshrestha/async.vim'  " Needed for vim-lsp
Plug 'prabirshrestha/vim-lsp'    " Language server support
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'thomd/vim-wasabi-colorscheme'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
call plug#end()

set hidden
set modeline
set nu
nmap <Leader>ff :FZF<cr>
nmap <Leader>nt :NERDTreeToggle<cr>
nmap <Leader>nf :NERDTreeFind<cr>
nmap <Leader>nh :set nohls<cr>

au filetype go nmap <Leader>tt :GoTest!<cr>
au filetype go nmap <Leader>tf :GoTestFunc!<cr>
au filetype go silent GoBuildTags js mage
au filetype go setlocal noexpandtab tabstop=4 shiftwidth=4
au filetype html setlocal expandtab tabstop=2 shiftwidth=2
au filetype hcl setlocal noexpandtab tabstop=4 shiftwidth=4
au filetype rust setlocal omnifunc=lsp#complete

" Register language servers.
if executable('rls')
	au User lsp_setup call lsp#register_server({
				\ 'name': 'rls',
				\ 'cmd': {server_info->['rls']},
				\ 'whitelist': ['rust'],
				\ })
endif

silent! colorscheme wasabi256
highlight! link NonText NONE
