cd_cmd() {
  local target=$1
  if [ -z "$target" ]; then
    cd ~ 2>/dev/null
  else
    cd "$target" 2>/dev/null || echo "Dossier introuvable : $target"
  fi
  pwd
}
