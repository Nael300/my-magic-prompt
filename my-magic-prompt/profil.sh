cat << 'EOF' > profil.sh
profil_cmd() {
    local nom="$1"
    
    if [ -z "$nom" ]; then
        echo "Erreur : Veuillez indiquer un nom (ex: profil Nael)."
        return 1
    fi
    
    echo "=== Profil Utilisateur ==="
    echo "Nom : $nom"
    echo "Statut : Utilisateur du projet My Magic Prompt"
    echo "Machine : $(whoami)@$(hostname)"
}
EOF
