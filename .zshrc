# Set Apple Terminal.app resume directory
if [[ $TERM_PROGRAM == "Apple_Terminal" ]] && [[ -z "$INSIDE_EMACS" ]] {
  function chpwd {
    local SEARCH=' '
    local REPLACE='%20'
    local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
    printf '\e]7;%s\a' "$PWD_URL"
  }

  chpwd
}

# Load functions and completion
fpath=(~/.zsh/functions $fpath)
autoload -U compinit
compinit
autoload -U ~/.zsh/functions/*(:t)

# Matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Load files
for file (~/.zsh/*.zsh) source $file

# Path
export PATH="/Users/naveed/Library/Python/2.7/bin:/usr/local/php5/bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

. ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
