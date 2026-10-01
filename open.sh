open_cmd() {
  local target=$1
  if [ -z "$target" ]; then
    echo "Erreur : veuillez spécifier un fichier ou une URL à ouvrir."
  else
    xdg-open "$target" 2>/dev/null || open "$target" 2>/dev/null || echo "Impossible d'ouvrir : $target"
  fi
}
