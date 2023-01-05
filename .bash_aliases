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

mkd() {
  mkdir $1 && cd $1
}

docs() {
  curl cheat.sh/"$@"
}

# Coiled Related laziness
alias uvicorn="ca coiled && uvicorn cloud.asgi:application --host=0.0.0.0 --port=8000 --reload --ws-max-size=10_000_000_000 --reload-dir backends --reload-dir cloud"
alias worker="ca coiled && celery -A cloud worker -l INFO"
alias beat="ca coiled && celery -A cloud beat -l INFO"
alias open=xdg-open

