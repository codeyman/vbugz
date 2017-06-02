# vbugz

If your commit message summary is formatted as "Bug <BUGID>:", this plugin can
get the Bug details associated with the current line and display that in a separate
window.
Think of this as a broiler plate plugin. Feel free to modify the python code
as you see fit in your particular use case.

## Requirements

This plugin few third party applications to work:
- [git:](https://git-scm.com/)
    Git is used to pull the blame information for the current line. This is then parsed
    to obtain the bugID, which is then passed to pybugz.
- [pybugz:](https://github.com/williamh/pybugz)
    Pybugz then pulls the relevant information from bugzilla.

Make sure that both git and pybugz are working before you use this plugin.

## Installation

Use your plugin manager of choice.

- [Pathogen](https://github.com/tpope/vim-pathogen)
  - `git clone https://github.com/codeyman/vbugz ~/.vim/bundle/vbugz`
- [Vundle](https://github.com/gmarik/vundle)
  - Add `Bundle 'https://github.com/codeyman/vbugz'` to .vimrc
  - Run `:BundleInstall`
- [NeoBundle](https://github.com/Shougo/neobundle.vim)
  - Add `NeoBundle 'https://github.com/codeyman/vbugz'` to .vimrc
  - Run `:NeoBundleInstall`
- [vim-plug](https://github.com/junegunn/vim-plug)
  - Add `Plug 'https://github.com/codeyman/vbugz'` to .vimrc
  - Run `:PlugInstall`
- [vim-8](http://www.vim.org/download.php)
  - `git clone https://github.com/codeyman/vbugz ~/.vim/pack/<yourplugins>/start/vbugz`
