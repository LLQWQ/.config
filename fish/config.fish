if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# 设置conda 
set -gx PATH /opt/miniconda/bin $PATH
source /opt/miniconda/etc/fish/conf.d/conda.fish

# 设置自己的命令库
set -gx PATH "$HOME/functions/nvim" $PATH

# 设置语言
set -gx LANG en_US.UTF-8
set -gx LANGUAGE en_US:zh_CN

# fzf
#set -gx FZF_DEFAULT_OPTS '--bind=ctrl-t:top,change:top --bind ctrl-e:down,ctrl-u:up'
#export FZF_DEFAULT_OPTS='--bind ctrl-e:down,ctrl-u:up --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
#export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
#set -gx FZF_DEFAULT_COMMAND 'fd'
#set -gx FZF_COMPLETION_TRIGGER '\\'
# set -gx FZF_TMUX 1
# set -gx FZF_TMUX_HEIGHT '80%'
# set -gx FZF_PREVIEW_CMD '[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
