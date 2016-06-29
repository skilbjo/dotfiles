let vim_dir = fnameescape($HOME.'/.vim')

if !&diff && version >= 703
	execute 'source '.vim_dir.'/plugins.vim'
	execute 'source '.vim_dir.'/plugin_settings.vim'
end

syntax on

set number

set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab

set ruler title laststatus=2 
set hlsearch

