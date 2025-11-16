#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export PATH="~/.dotnet/tools:$PATH"

. "$HOME/.local/share/krita/ai_diffusion/server/uv/env"
eval "$(zellij setup --generate-auto-start bash)"
