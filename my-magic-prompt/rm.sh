cat << 'EOF' > rm.sh
rm_cmd() {
    local target="$1"
    
    if [ -z "$target" ]; then
        echo "Erreur : Veuillez indiquer un fichier ou un dossier a supprimer (ex: rm fichier.txt)."
        return 1
    fi
    
    if [ ! -e "$target" ]; then
        echo "Erreur : '$target' n existe pas."
        return 1
    fi
    
    read -p "Voulez vous vraiment supprimer '$target' ? (o/n) : " confirmation
    if [ "$confirmation" = "o" ] || [ "$confirmation" = "O" ]; then
        rm -rf "$target"
        echo "Suppression effectuee avec succes."
    else
        echo "Suppression annulee."
    fi
}
EOF
