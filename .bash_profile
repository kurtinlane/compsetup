bind -f /Users/colton/.bashrc

export HISTFILESIZE=1000000;
export CLICOLOR=1

# GO STUFF
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOPATH/bin:$PATH
#GO TEST open html page to show what lines were tested
alias gotestcover='go test -coverprofile=coverage.out;go tool cover -html=coverage.out'
export GO111MODULE=off;

#WBCLI
export GITLAB_ACCESS_TOKEN=bS36mED_GfLV4gy385gs

export DEVELOPMENT=true

#WEAVE
export WLOG_LOCAL=true

# added by Miniconda3 installer
export PATH="/Users/colton/miniconda3/bin:$PATH"


#Aliases
alias grep='grep --color=auto'
alias l='ls -alh'
alias c='clear'
alias ..='cd ..'
alias gh='cd ~'
alias gs='git status'
alias gp='git pull'
alias gpu='git push'
alias gitlog='git log --graph --format="format:%h %s%d (%aN, %ar)" --all --branches=\* --remotes=\*'
alias gohome='cd ~/go/src/github.com/kurtinlane'
alias addtopath='export PATH=${PWD}:$PATH'
alias dev_nsqa='nsqadmin --lookupd-http-address=dev-nsqlookup-01:4161'
alias nsqa='nsqadmin --lookupd-http-address=nsqlookup-01:4161 --lookupd-http-address=nsqlookup-02:4161 --graphite-url=http://metrics --use-statsd-prefixes=false'

#Network
alias ip='curl http://ipecho.net/plain; echo'

#Vi shortcut
alias sv='sudo vi'

#Dev
alias ngrep_port='sudo ngrep -d any -W byline -P  -p -q port $1'

#KUBECTL k8s
alias kubectlproxy='kubectl proxy -s http://kube-load:8080 -p 8080'
alias devkubectlproxy='kubectl proxy -s http://dev-kube-master-a:8080 -p 8080'
alias kc="kubectl"
alias context="kubectl config current-context"
alias ccp="kubectl config use-context prod-ut"
alias ccd="kubectl config use-context dev-ut"
alias devc="kubectl config set contexts.dev-ut.namespace client"
alias devd="kubectl config set contexts.dev-ut.namespace data"
alias devm="kubectl config set contexts.dev-ut.namespace messaging"
alias prodc="kubectl config set contexts.prod-ut.namespace client"
alias prodd="kubectl config set contexts.prod-ut.namespace data"
alias prodm="kubectl config set contexts.prod-ut.namespace messaging"

#Jaeger Tracer agent run locally
alias tracer="docker run -p5775:5775/udp -p6831:6831/udp -p6832:6832/udp -p5778:5778 -p16686:16686 -p14268:14268 jaegertracing/jaeger-agent /go/bin/agent-linux --collector.host-port=10.55.99.201:30120"

#powerline-shell (fancy colors in terminal)
function _update_ps1() {
    PS1=$(powerline-shell $?)
}
if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

#git completion
#source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
. ~/.git-completion.bash
#Misc


#Bash profile
prfl_file='/Users/colton/.bash_profile'
alias prof="code $prfl_file"
alias reload="source $prfl_file"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


#change weave desktop client between prod and dev
alias prodweave='cp ~/prod-config.ini ~/Library/Application\ Support/Weave/config.ini'
alias devweave='cp ~/dev-config.ini ~/Library/Application\ Support/Weave/config.ini'
alias gl='cd /Users/colton/go/src/weavelab.xyz'


