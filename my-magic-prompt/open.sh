cat << 'EOF' > open.sh
open_cmd() {
    local target="$1"
    
    if [ -z "$target" ]; then
        echo "Erreur : Veuillez indiquer un fichier ou une URL a ouvrir (ex: open index.html)."
        return 1
    fi
    
    if [ ! -e "$target" ] && [[ ! "$target" =~ ^https?:// ]]; then
        echo "Erreur : '$target' n existe pas."
        return 1
    fi
    
    if command -v xdg-open &>/dev/null; then
        xdg-open "$target" &>/dev/null &
        echo "Ouverture de '$target' en cours..."
    elif command -v open &>/dev/null; then
        open "$target" &>/dev/null &
        echo "Ouverture de '$target' en cours..."
    else
        echo "Erreur : Aucune commande d ouverture disponible (xdg-open ou open)."
        return 1
    fi
}
EOF
