profil_cmd() {
  echo "=== Profil Utilisateur ==="
  read -p "Entrez votre prénom : " prenom
  read -p "Entrez votre nom : " nom
  read -p "Entrez votre âge : " age
  read -p "Entrez votre email : " email
  echo "-------------------------"
  echo "Nom : $nom $prenom"
  echo "Âge : $age ans"
  echo "Email : $email"
}
