cat << 'EOF' > ls.sh
ls_cmd() {
    local target_dir="$1"
    
    if [ -z "$target_dir" ]; then
        target_dir="."
    fi
    
    if [ -d "$target_dir" ]; then
        echo "=== Contenu de $target_dir ==="
        ls -la "$target_dir"
    else
        echo "Erreur : Le dossier '$target_dir' n existe pas ou n est pas valide."
    fi
}
EOF
