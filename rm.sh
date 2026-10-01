rm_cmd() {
  local target=$1
  if [ -z "$target" ]; then
    echo "Erreur : aucun fichier ou dossier spécifié."
  else
    rm -ri "$target"
  fi
}
