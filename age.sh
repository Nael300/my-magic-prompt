age_cmd() {
  read -p "Entrez votre âge : " user_age
  if [ "$user_age" -ge 18 ]; then
    echo "Vous êtes majeur."
  else
    echo "Vous êtes mineur."
  fi
}
