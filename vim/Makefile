ALL=pathogen vim-yaml-folds git-gutter fugitive airline syntastic nerdtree tabular verilog_systemverilog fzf

all: $(ALL)

dirs:
	@mkdir -p ~/.vim/bundle
	@mkdir -p ~/.vim/autoload

airline: dirs
	git clone https: dirs//github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

fugitive: dirs
	git clone https: dirs//github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive

fzf:
	@echo "See https://github.com/junegunn/fzf for FZF install"

git-gutter: dirs
	git clone git: dirs//github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter

nerdtree: dirs
	git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree

pathogen: dirs
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

syntastic: dirs
	git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic

tabular: dirs
	git clone git://github.com/godlygeek/tabular.git ~/.vim/bundle/tabluar

ctags: dirs
	git clone https: dirs//github.com/universal-ctags/ctags.git
	cd ctags && ./configure --prefix=$(HOME)
	cd ctags && make install

# SystemVerilog Plugin w/ Omni Completion and quickfix mode w/ Make + VCS
#   Requires devel version of universal-ctags
verilog_systemverilog: dirs ctags
	git clone https://github.com/vhda/verilog_systemverilog.vim ~/.vim/bundle/verilog_systemverilog

vim-yaml-folds: dirs
	git clone https: dirs//github.com/pedrohdz/vim-yaml-folds.git ~/.vim/bundle/vim-yaml-folds

# easyalign - not bothering

# fzf https://github.com/junegunn/fzf

hsvim: dirs
	git clone --recursive https: dirs//github.com/sdiehl/haskell-vim-proto.git

.PHONY: $(ALL)
