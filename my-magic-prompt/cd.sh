cat << 'EOF' > cd.sh
cd_cmd() {
    local target_dir="$1"
    
    if [ -z "$target_dir" ]; then
        target_dir="$HOME"
    fi
    
    cd "$target_dir" 2>/dev/null
    if [ $? -eq 0 ]; then
        echo "Dossier actuel : $(pwd)"
    else
        echo "Erreur : Impossible d acceder au dossier '$target_dir'."
    fi
}
EOF
