cat << 'EOF' > smtp.sh
smtp_cmd() {
    local destinataire="$1"
    
    if [ -z "$destinataire" ]; then
        echo "Erreur : Veuillez indiquer une adresse email destinataire (ex: smtp user@example.com)."
        return 1
    fi
    
    echo "Preparation de l envoi vers : $destinataire"
    read -p "Entrez le sujet du message : " sujet
    read -p "Entrez le corps du message : " corps
    
    echo "Simulation d envoi d email..."
    echo "Destinataire : $destinataire"
    echo "Sujet : $sujet"
    echo "Message : $corps"
    echo "Email envoye avec succes (mode simulation)."
}
EOF
