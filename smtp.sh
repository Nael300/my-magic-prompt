smtp_cmd() {
  local dest=$1
  local sujet=$2
  if [ -z "$dest" ] || [ -z "$sujet" ]; then
    echo "Usage : smtp <destinataire> <sujet>"
  else
    echo "Simulation d'envoi d'un email à $dest avec le sujet : '$sujet'"
    # Commande de base simulée ou réelle selon l'outil installé (ex: curl / sendmail)
    echo "Email bien transmis via le protocole SMTP."
  fi
}
