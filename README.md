# dotfiles

Dotfiles, tools and settings for my development environment.


#### Usage

- Create symlinks from the source files in this repo to the target files
  in the homedirectory. Use full paths.

#### Pycharm

- Solarized colours: see https://github.com/jkaving/intellij-colors-solarized

#### Atom.io

- Syntax Theme: Solarized light
- UI Theme: "One light" (will be based on above then)

#### Max OSX Terminal

- Solarized colours: http://ethanschoonover.com/solarized/files/solarized.zip
- Download the colours, find the folder with the terminal colours, and install
  them from Finder with "Open".
- Set the new colour theme as default in the Terminal preferences.
- In the Terminal preferences: change in "Advanced" the "Declare terminal as"
  to `xterm-256` (I had problems otherwise with e.g. `tig`)

#### ZSH, oh-my-zsh

- Set better dir colours for Mac OSX: `export LSCOLORS=exfxcxdxbxexexabagacad`

#### Development

- Principal approaches

  - Either: create a symlink to the dotfile (e.g. a .zshrc to the one
    from the dotfiles repo)
  - Or: use Ansible templates. This is useful if something needs to be
    preprocessed.

- ToDos

  - atom
  - install additional tools with homebrew: zsh, oh-my-zsh, tig,
    silver-searcher, icdiff
