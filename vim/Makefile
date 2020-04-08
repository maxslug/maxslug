ALL=pathogen vim-yaml-folds git-gutter fugitive airline syntastic nerdtree tabular verilog_systemverilog fzf

all: $(ALL)

dirs:
	@mkdir -p ~/.vim/bundle
	@mkdir -p ~/.vim/autoload

airline: dirs
	if [ -d ~/.vim/bundle/vim-airline ]; then \
	  cd ~/.vim/bundle/vim-airline && git pull; \
	else \
	  git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline; \
	fi

fugitive: dirs
	if [ -d ~/.vim/bundle/vim-fugitive ]; then \
	  cd ~/.vim/bundle/vim-fugitive && git pull; \
	else \
	  git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive; \
	fi

fzf:
	@echo "See https://github.com/junegunn/fzf for FZF install"

git-gutter: dirs
	if [ -d ~/.vim/bundle/vim-gitgutter ]; then \
	  cd ~/.vim/bundle/vim-gitgutter && git pull; \
	else \
	  git clone git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter; \
	fi

nerdtree: dirs
	if [ -d ~/.vim/bundle/nerdtree ]; then \
	  cd ~/.vim/bundle/nerdtree && git pull; \
	else \
	  git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree; \
	fi

pathogen: dirs
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

syntastic: dirs
	if [ -d ~/.vim/bundle/syntastic ]; then \
	  cd ~/.vim/bundle/syntastic && git pull; \
	else \
	  git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic; \
	fi

tabular: dirs
	if [ -d ~/.vim/bundle/tabular ]; then \
	  cd ~/.vim/bundle/tabular && git pull; \
	else \
	  git clone git://github.com/godlygeek/tabular.git ~/.vim/bundle/tabular; \
	fi

ctags-deps:
	sudo apt install \
          gcc make \
          pkg-config autoconf automake \
          python3-docutils \
          libseccomp-dev \
          libjansson-dev \
          libyaml-dev \
          libxml2-dev

ctags: dirs ctags-deps
	if [ -d ctags ]; then \
	  cd ctags && git pull; \
	else \
	  git clone https://github.com/universal-ctags/ctags.git; \
	fi
	cd ctags && ./autogen.sh
	cd ctags && ./configure --prefix=$(HOME)
	cd ctags && make install

# SystemVerilog Plugin w/ Omni Completion and quickfix mode w/ Make + VCS
#   Requires devel version of universal-ctags
verilog_systemverilog: dirs ctags
	if [ -d ~/.vim/bundle/verilog_systemverilog ]; then \
	  cd ~/.vim/bundle/verilog_systemverilog && git pull; \
	else \
	  git clone https://github.com/vhda/verilog_systemverilog.vim ~/.vim/bundle/verilog_systemverilog; \
	fi

vim-yaml-folds: dirs
	if [ -d ~/.vim/bundle/vim-yaml-folds ]; then \
	  cd ~/.vim/bundle/vim-yaml-folds && git pull; \
	else \
	  git clone https://github.com/pedrohdz/vim-yaml-folds.git ~/.vim/bundle/vim-yaml-folds; \
	fi

# easyalign - not bothering

# fzf https://github.com/junegunn/fzf

hsvim: dirs
	git clone --recursive https://github.com/sdiehl/haskell-vim-proto.git

.PHONY: $(ALL)
