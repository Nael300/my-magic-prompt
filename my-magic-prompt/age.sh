cat << 'EOF' > age.sh
age_cmd() {
    local birth_year="$1"
    local current_year=$(date +%Y)
    
    if [ -z "$birth_year" ]; then
        echo "Erreur : Veuillez indiquer votre annee de naissance (ex: age 2005)."
        return 1
    fi
    
    if ! [[ "$birth_year" =~ ^[0-9]+$ ]]; then
        echo "Erreur : L annee doit etre un nombre valide."
        return 1
    fi
    
    local age=$((current_year - birth_year))
    echo "Vous avez environ $age ans."
}
EOF
