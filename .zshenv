# +----------------------------------------------------------+
# | PATH                                                     |
# +----------------------------------------------------------+
typeset -gx -U path
path=(
  ~/bin(N-/)
  /usr/local/bin(N-/)
  /usr/local/go/bin(N-/)
  "$path[@]"
)


# +----------------------------------------------------------+
# | Languages                                                |
# +----------------------------------------------------------+

# ++ asdf +------------------------------------------------------------+
if [[ -f "${HOME}/.asdf/asdf.sh" ]]; then
  . "${HOME}/.asdf/asdf.sh"
fi

# ++ Rust +------------------------------------------------------------+
if [[ -f "${HOME}/.cargo/env" ]]; then
  . "${HOME}/.cargo/env"
fi

# ++ Golang +----------------------------------------------------------+
export GOPATH="${HOME}/dev"
if [[ -d "${GOPATH}/bin" ]]; then
  path+=("${GOPATH}/bin")
fi

export GPG_TTY=$(tty)
