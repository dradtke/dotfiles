call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'benmills/vimux'
Plug 'fatih/vim-go'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'thomd/vim-wasabi-colorscheme'
Plug 'b4b4r07/vim-hcl'
Plug 'scrooloose/nerdtree'
call plug#end()

set hidden
set modeline
set nu
nmap <Leader>ff :FZF<cr>
nmap <Leader>nt :NERDTreeToggle<cr>
nmap <Leader>nf :NERDTreeFind<cr>

au filetype go nmap <Leader>tt :GoTest!<cr>
au filetype go nmap <Leader>tf :GoTestFunc!<cr>
au filetype go silent GoBuildTags js mage
au filetype go setlocal noexpandtab tabstop=4 shiftwidth=4
au filetype html setlocal expandtab tabstop=2 shiftwidth=2
au filetype hcl setlocal noexpandtab tabstop=4 shiftwidth=4

silent! colorscheme wasabi256
