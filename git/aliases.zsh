# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gc='git commit'
alias gca='git commit -a'
unalias gco 2>/dev/null
gco() { \git checkout "$@"; }
alias gcb='git copy-branch-name'
alias gb='for k in $(git branch | sed s/^..//); do echo -e $(git log --color=always -1 --pretty=format:"%Cgreen%ci!%Cblue%cr!%Creset" $k --) "$k";done | sort -r | column -t -s "!"'
alias gbg='git log --decorate --all --graph --simplify-by-decoration --topo-order --date=short --format="[%Cgreen%cd]%Creset%d"'
# alias gbg='git log --decorate --all --graph --simplify-by-decoration --topo-order --date=short --format="%h [%cd]%d %s"'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'
alias ge='git-edit-new'
