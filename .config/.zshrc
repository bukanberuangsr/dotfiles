# Install oh-my-zsh for the themes
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="refined"
zstyle ':omz:update' frequency 14
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
plugins=()

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR="hx"

# Aliases
alias zshconfig="hx ~/.zshrc"
alias config="cd ~/.config/"
alias niriconfig="hx ~/.config/niri/."
alias hyprconfig="hx ~/.config/hypr/."
alias fetchconfig="hx ~/.config/fastfetch/config.jsonc"
alias fetch="fastfetch"
alias sem6="cd ~/Documents/kuliah/mata-kuliah/semester-6/"
alias dsu="sudo dnf update vencord -y"
alias kitcfg="hx ~/.config/kitty/."
alias capsapi="cd ~/Documents/projects/B1K5-API/"
alias about="sh ~/Documents/scripts/aboutme.sh"
alias cs="clear"
alias seb_linux="./repos/seb-linux/build/bin/safe-exam-browser ~/Downloads/config.seb --fullscreen"

# Run any program here
fetch

# Yazi setup
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  command yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

# Plugins installed from dnf repo
# source /usr/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
