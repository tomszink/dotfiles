# dotfiles
Dotfiles and Settings


#### Usage

- Execute `run_ansible.sh`
- Precondions: Ansible must be installed, which is used to create
  symlinks to the dotfiles in the home directory.


#### Pycharm

- Solarized colors: see https://github.com/jkaving/intellij-colors-solarized


#### Atom.io

- Syntax Theme: Solarized light
- UI Theme: One light (will be based on above then)


#### Max OSX Terminal

- Solarized colors: http://ethanschoonover.com/solarized/files/solarized.zip
- Download the colors, find the folder with the terminal colors, and install
  them from Finder with "Open".
- Set the new color theme as default in the Terminal preferences.
- In the Terminal preferences: change in "Advanced" the "Declare terminal as"
  to `xterm-256` (I had problems otherwise with e.g. `tig`)

#### ZSH, oh-my-zsh

- Install fonts: https://github.com/powerline/fonts ???
- Set better dir colours for Mac OSX: export LSCOLORS=exfxcxdxbxexexabagacad

#### Development

- Principal approaches

  - Either: create a simlink to the dotfile (e.g. a .zshrc to the one
    from the dotfiles repo)
  - Or: use Ansible templates. This is useful if something needs to be
    preprocessed.

- ToDos

  - Use global vars where useful
  - Use templating for .zshrc to change the file location
