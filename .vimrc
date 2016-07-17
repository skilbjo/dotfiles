let vim_dir = fnameescape($HOME.'/.vim')

syntax on
set number
set nowrap

set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab

if !&diff && version >= 703
	execute 'source '.vim_dir.'/settings.vim'
	execute 'source '.vim_dir.'/keybindings.vim'
	execute 'source '.vim_dir.'/plugins.vim'
	execute 'source '.vim_dir.'/plugin_settings.vim'
end
