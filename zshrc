

saint_du_jour() {
  local fichier="$HOME/.config/saints/calendrier.csv"
  local cle=$(date +%m-%d)
  local ligne

  ligne=$(grep "^$cle," "$fichier" 2>/dev/null)

  if [ -n "$ligne" ]; then
    echo "$ligne" | cut -d',' -f2-
  fi
}

PROMPT='%F{magenta}✝️%f %F{yellow}$(saint_du_jour)%f %F{green}%~%f > '
alias catho='fortune ~/fortunes/catho'
catho
