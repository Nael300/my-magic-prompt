cat << 'EOF' > passw.sh
passw_cmd() {
    local longueur="${1:-12}"
    
    if ! [[ "$longueur" =~ ^[0-9]+$ ]]; then
        echo "Erreur : La longueur doit etre un nombre (ex: passw 10)."
        return 1
    fi
    
    local pwd_gen=$(tr -dc 'A-Za-z0-9_!@#$%' < /dev/urandom | head -c "$longueur")
    
    echo "Mot de passe genere ($longueur caracteres) : $pwd_gen"
}
EOF
