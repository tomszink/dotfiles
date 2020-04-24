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

- Switch the default to another color scheme, or: ...
- Solarized colours: http://ethanschoonover.com/solarized/files/solarized.zip
- Download the colours, find the folder with the terminal colours, and install
  them from Finder with "Open".
- Set the new colour theme as default in the Terminal preferences.
- In the Terminal preferences: change in "Advanced" the "Declare terminal as"
  to `xterm-256` (I had problems otherwise with e.g. `tig`)


#### ZSH, oh-my-zsh

- Set better dir colours for Mac OSX: `export LSCOLORS=exfxcxdxbxexexabagacad`
- Install the "powerlevel10k" theme, see:

  1. Install fonts

     https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k

     => download, install, then activate in the Max OS X Terminal

  2. Install theme to the ~/.oh-my-zsh folder:

     https://github.com/romkatv/powerlevel10k#oh-my-zsh

  3. Symlink the config file from this repo (or to create a new
     config run: `p10k configure`)

- Auto-suggestions like fish:

  - https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
  - => clone the repo into ~/.oh-my-zsh/custom/plugins
  - Hint: autocomplete with "->" (arrow-right) or single words with "ALT->"
    (ALT and arrow-right)

#### Python

- pyenv (https://github.com/pyenv/pyenv)

      - See e.g.: https://realpython.com/intro-to-pyenv/
      - List locally available python versions with `pyenv versions`
      - Install python version e.g. with `pyenv install 3.8.1`
      - Set system wide global version with `pyenv global 3.8.1`
      - Set directory specific version with ``pyenv local 3.8.1``
      - Set shell version: `pyenv shell 3.8.1`

- pipx
- pipenv


#### Development

- Principal approaches

  - Either: create a symlink to the dotfile (e.g. a .zshrc to the one
    from the dotfiles repo)
  - Or: use Ansible templates. This is useful if something needs to be
    preprocessed.

- ToDos / Additional tools

  - Atom config
