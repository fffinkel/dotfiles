
alias ls='ls -G'
alias s='screen -dRR'
alias sls='screen -ls'
alias vi='vim -p'
alias woo='vim -p $(~/src/github.com/fffinkel/gerber/bin/gerber recent)'

alias jqq="jq -R '. as \$line | try (fromjson) catch \$line'"

# git!
alias ga='git add'
alias gb='git branch'
alias gci='git commit --verbose'
alias gcia='git commit --verbose --amend'
alias gciae='git commit --verbose --amend --no-edit'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch origin main'
alias gfr='git fetch origin main && git rebase origin/main'
alias gl='git log --graph --pretty="format:%h %s"'
alias glo='git log --graph --stat'
alias glog='git log -p --graph'
alias grh='git reset HEAD'
alias gri='git rebase -i'
alias gggg='git add . && git stash'
alias gst='git status'

alias bbbb='grb && gfr'
alias bp='gl origin/main..'
alias bop='glo origin/main..'
alias boop='glog origin/main..'
alias mlem='git diff $(git merge-base origin/main HEAD)..HEAD'
alias newnew='git fetch origin main && git checkout origin/main'

function git_rebase_branch() {
  head=$(git rev-parse --abbrev-ref HEAD)
  git pull --rebase origin $head
}
alias grb=git_rebase_branch

function ack_in_vim() {
  vim +"Ack \"$1\" $2"
}
alias ack=ack_in_vim

function git_new_branch() {
  git fetch origin main
  git checkout -b $1 --no-track origin/main
  git push --set-upstream origin $1
}
alias gnb=git_new_branch

function git_regex_delete() {
  result=$(git branch | grep "$1")
  if [[ $result = *$'\n'* ]]; then
    echo "error, found multiple branches matching \"$1\""
    return 1
  fi
  git branch ${2:-\-d} $(echo ${result/\*/} | xargs)
}
alias gbd=git_regex_delete

function git_regex_checkout() {
  result=$(git branch | grep "$1")
  if [[ $result = *$'\n'* ]]; then
    echo "error, found multiple branches matching \"$1\""
    return 1
  fi
  git checkout $(echo ${result/\*/} | xargs)
}
alias gco=git_regex_checkout
alias gcom='git checkout origin/main'

function edit_conflicts() {
  vim -p $(git status | grep "both modified:" | perl -pe 's/both modified:\s*(.*)$/$1/')
}
alias ugh=edit_conflicts

function edit_modified() {
  vim -p $(git status | grep "^\s*modified:" | perl -pe 's/modified:\s*(.*)$/$1/')
}
alias work=edit_modified

open_go_coverage () {
  go test -v -run Test -coverprofile /tmp/go-cover.tmp $1
  go tool cover -html /tmp/go-cover.tmp -o /tmp/go-cover.html
  open /tmp/go-cover.html
}
alias cvr=open_go_coverage

k_namespace () {
  if [[ -z "${KNAMESPACE}" ]]; then
    kubectl $@ | tee /tmp/_last_k.out
  else
    kubectl -n $KNAMESPACE $@ | tee /tmp/_last_k.out
  fi
}
alias k=k_namespace

k_set_namespace () {
  export KNAMESPACE=$1
}
alias kns=k_set_namespace

alias _k=k_last_output_regex
function k_last_output_regex() {
  result=$(cat /tmp/_last_k.out | grep "$1")
  if [[ $result = *$'\n'* ]]; then
    out=$(echo $result | sed '1p;d' | awk '{print $1}')
  else
    out=$(echo $result | awk '{print $1}')
  fi
  >&2 echo "_k selected ouptut $out\n"
  echo $out
}
alias gco=git_regex_checkout

k_reset () {
  export KNAMESPACE=
  export KUBECONFIG=
}
alias kr=k_reset

function ugh_what_now_ffs() {
  git fetch origin main $1
  git diff $(git merge-base origin/main origin/$1)..origin/$1
}
alias ffs=ugh_what_now_ffs

function ugh_what_now() {
  git fetch origin main $1
  git log $(git merge-base origin/main origin/$1)..origin/$1
}
alias ughwhatnow=ugh_what_now

function k_logs() {
  k logs -l app.kubernetes.io/name=$1 --since=${2:-5m} --max-log-requests=10
}
alias kl=k_logs

