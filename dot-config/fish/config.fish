set -g fish_greeting

if status is-interactive
    starship init fish | source
end

# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree

# Always use neovim
abbr -a vi nvim

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

# Starting up keychain
if status --is-interactive
    keychain --eval --quiet -Q | source
end

set -x MANPAGER "nvim +Man!"

# Set up fzf key bindings
fzf --fish | source

# Starting up ssh agent
if test -z "$SSH_ENV"
    set -xg SSH_ENV $HOME/.ssh/environment
end
