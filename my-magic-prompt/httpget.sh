cat << 'EOF' > httpget.sh
httpget_cmd() {
    local url="$1"
    
    if [ -z "$url" ]; then
        echo "Erreur : Veuillez indiquer une URL (ex: httpget https://example.com)."
        return 1
    fi
    
    echo "Telechargement en cours de : $url"
    curl -O "$url" || wget "$url"
    
    if [ $? -eq 0 ]; then
        echo "Telechargement termine avec succes."
    else
        echo "Erreur lors du telechargement."
    fi
}
EOF
