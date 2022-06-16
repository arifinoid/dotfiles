set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
alias ys "yarn start"
alias yd "yarn dev"
alias cl clear
alias vim nvim
alias tms "tmux source-file ~/.config/.tmux.conf"
alias tmk "tmux kill-session -a"
alias ide "tmux split-window -v -p 30;tmux split-window -h -p 66;tmux split-window -h -p 50"
alias yd- "yarn develop --watch-admin"
alias yb "yarn build"
alias nvm14 "nvm use 14"
alias nvm16 "nvm use 16"
alias nvma14 "nvm alias default 14"
alias nvma16 "nvm alias default 16"
alias grm "go run main.go"
alias gr. "go run ."
alias gpo "git pull origin"
alias gpom "git pull origin master"
alias ps "pipenv shell"
alias pi "pipenv install"
alias yof "yarn build && yarn workspace @efishery/onefish-docs dev"
alias yt "yarn test"
alias prd "pnpm run dev"

command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Python
fish_add_path /opt/homebrew/opt/python@3.8/bin
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
# set -x GOPATH $HOME/go
# set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

starship init fish | source

fish_add_path /usr/local/sbin

export PATH="/Users/arifinoidefishery/.ebcli-virtual-env/executables:$PATH"
