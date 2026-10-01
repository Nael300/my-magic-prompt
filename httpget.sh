httpget_cmd() {
  local url=$1
  if [ -z "$url" ]; then
    echo "Erreur : veuillez spécifier une URL."
  else
    curl -s "$url"
  fi
}

