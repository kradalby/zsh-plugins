# This was found on http://grml.org/zsh/zsh-lovers.html
# Basically type '...' to get '../..' with successive .'s adding /..
rationalise-dot() {
  if [[ $LBUFFER = *.. ]]; then
    LBUFFER+=/..
  else
    LBUFFER+=.
  fi
}
zle -N rationalise-dot
bindkey . rationalise-dot
