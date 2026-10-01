passw_cmd() {
  echo "=== Changement de mot de passe ==="
  read -sp "Nouveau mot de passe : " new_pass
  echo ""
  read -sp "Confirmez le mot de passe : " confirm_pass
  echo ""
  if [ "$new_pass" = "$confirm_pass" ]; then
    echo "Mot de passe modifié avec succès !"
  else
    echo "Erreur : les mots de passe ne correspondent pas."
  fi
}
