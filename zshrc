# Oh-my-zsh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
# history optimizations
HISTFILE=~/.zsh_history           # where to store your history
HISTSIZE=10000                    # number of lines kept in memory
SAVEHIST=10000                    # number of lines saved to file
# history control flags
setopt HIST_IGNORE_ALL_DUPS       # don't store command if it's a duplicate
setopt HIST_REDUCE_BLANKS         # remove superfluous whitespace
setopt HIST_IGNORE_SPACE          # don't store commands that start with a space
setopt HIST_VERIFY                # show command from history before executing
setopt INC_APPEND_HISTORY         # append (not overwrite) to history file
setopt SHARE_HISTORY              # share command history across all sessions

# Starship
eval "$(starship init zsh)"

# Eza (better 'ls')
EZA_COMMON_FLAGS="--icons --header --group-directories-first --sort=name"
# short and long listings
alias ls="eza -1 $EZA_COMMON_FLAGS"
alias ll="eza -lgh $EZA_COMMON_FLAGS"
alias la="eza -lag $EZA_COMMON_FLAGS"
# tree views
alias lt="eza -T $EZA_COMMON_FLAGS"
alias lt1="eza -T --level=1 $EZA_COMMON_FLAGS"
alias lt2="eza -T --level=2 $EZA_COMMON_FLAGS"
alias lt3="eza -T --level=3 $EZA_COMMON_FLAGS"
# tree views with hidden files
alias lta="eza -Tla $EZA_COMMON_FLAGS"
alias lta1="eza -Tla --level=1 $EZA_COMMON_FLAGS"
alias lta2="eza -Tla --level=2 $EZA_COMMON_FLAGS"
alias lta3="eza -Tla --level=3 $EZA_COMMON_FLAGS"
