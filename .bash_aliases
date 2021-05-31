alias update='ncu -u && npm install'
alias pipenv='python3 -m pipenv'
alias py='python3 -m'
alias python='python3'
alias pip='pip3'
alias tox='python3 -m tox'
alias pytest='python3 -m pytest'
alias buildocs="rm -rf build && make html"
alias gcb="git checkout -b"
alias gpu='git push -u origin'
alias gbd='git branch -D'
alias gcam='git commit -am'
alias gc='git commit -m'
alias gst='git status -s'
alias glog='git log --oneline --decorate --all --graph'
alias ca="conda activate"
alias gmain="git checkout main && git pull origin main"

gclone() {
          git clone "$1" && cd "$(basename "$1" .git)"
}

