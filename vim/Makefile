ALL=pathogen vim-yaml-folds git-gutter fugitive airline syntastic nerdtree tabular
ALL+=verilog_systemverilog fzf fast-fold python-folding mermaid mako toml hjson
# tcl

all: $(ALL)

dirs:
	@mkdir -p ~/.vim/bundle
	@mkdir -p ~/.vim/autoload
	@mkdir -p ~/.vim/syntax

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
	  git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter; \
	fi

nerdtree: dirs
	if [ -d ~/.vim/bundle/nerdtree ]; then \
	  cd ~/.vim/bundle/nerdtree && git pull; \
	else \
	  git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree; \
	fi

pathogen: dirs
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# vim.org is down right now
# Check for new ver at https://www.vim.org/scripts/script.php?script_id=1603
tcl: dirs
	curl -LSso ~/.vim/syntax/tcl.vim https://www.vim.org/scripts/download_script.php?src_id=24212

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
	  git clone https://github.com/godlygeek/tabular.git ~/.vim/bundle/tabular; \
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
#verilog_systemverilog: dirs ctags
verilog_systemverilog: dirs
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

fast-fold: dirs
	if [ -d ~/.vim/bundle/fast-fold ]; then \
	  cd ~/.vim/bundle/fast-fold && git pull; \
	else \
	  git clone https://github.com/Konfekt/FastFold ~/.vim/bundle/fast-fold; \
	fi

# python folding
python-folding: dirs
	if [ -d ~/.vim/bundle/vim-coiled-snake ]; then \
	  cd ~/.vim/bundle/vim-coiled-snake && git pull; \
	else \
          git clone https://github.com/kalekundert/vim-coiled-snake.git ~/.vim/bundle/vim-coiled-snake; \
	fi

# Mikrotik Syntax Highlighting
vim-mikrotik: dirs
	if [ -d ~/.vim/bundle/vim-mikrotik ]; then \
	  cd ~/.vim/bundle/vim-mikrotik && git pull; \
	else \
          git clone https://github.com/zainin/vim-mikrotik.git ~/.vim/bundle/vim-mikrotik; \
	fi

# easyalign - not bothering

# fzf https://github.com/junegunn/fzf

hsvim: dirs
	git clone --recursive https://github.com/sdiehl/haskell-vim-proto.git

# Mermaid diagrams syntax highlighting
mermaid: dirs
	if [ -d ~/.vim/bundle/mermaid.vim ]; then \
	  cd ~/.vim/bundle/mermaid.vim && git pull; \
	else \
          git clone git@github.com:mracos/mermaid.vim.git ~/.vim/bundle/mermaid.vim; \
	fi

mako: dirs
	if [ -d ~/.vim/bundle/vim-bundle-mako.vim ]; then \
	  cd ~/.vim/bundle/vim-bundle-mako.vim && git pull; \
	else \
	git clone git@github.com:sophacles/vim-bundle-mako.git ~/.vim/bundle/vim-bundle-mako.vim; \
	fi

toml: dirs
	if [ -d ~/.vim/bundle/vim-toml.vim ]; then \
	  cd ~/.vim/bundle/vim-toml.vim && git pull; \
	else \
          git clone git@github.com:cespare/vim-toml.git ~/.vim/bundle/vim-toml.vim; \
	fi

hjson: dirs
	if [ -d ~/.vim/bundle/vim-hjson ]; then \
	  cd ~/.vim/bundle/vim-json && git pull; \
	else \
	  git clone git@github.com:hjson/vim-hjson.git ~/.vim/bundle/vim-hjson; \
	fi

.PHONY: $(ALL)
