GITHUB="https://github.com"

[[ -z "$RBENV_HOME" ]] && export RBENV_HOME="$HOME/.rbenv"

# export PATH
export PATH="$RBENV_HOME/bin:$PATH"

_zsh_rbenv_install() {
    echo "Installing rbenv..."
    git clone "${GITHUB}/rbenv/rbenv.git"            "${RBENV_HOME}"
    git clone "${GITHUB}/rkh/rbenv-update.git"       "${RBENV_HOME}/plugins/rbenv-update"
    git clone "${GITHUB}/rbenv/ruby-build.git"       "${RBENV_HOME}/plugins/ruby-build"
}

_zsh_rbenv_load() {
    eval "$(rbenv init - --path)"
    eval "$(rbenv init - --no-rehash zsh)"
}

# install rbenv if it isnt already installed
if ! command -v rbenv &>/dev/null; then
    _zsh_rbenv_install
fi

# load rbenv if it is installed
if command -v rbenv &>/dev/null; then
    _zsh_rbenv_load
fi