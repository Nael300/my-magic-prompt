#!/bin/bash
source ./quit.sh
source ./help.sh
source ./about.sh
source ./version.sh
source ./pwd.sh
source ./hour.sh
source ./age.sh
source ./profil.sh
source ./passw.sh
source ./cd.sh
source ./ls.sh
source ./rm.sh
source ./httpget.sh
source ./smtp.sh
source ./open.sh

echo "Bienvenue dans My Magic Prompt !"
echo "Tapez 'help' pour voir les commandes disponibles ou 'quit' pour quitter."

while true; do
    read -p "MagicPrompt> " input_cmd args
    case "$input_cmd" in
        quit|exit) quit_cmd ;;
        help)      help_cmd ;;
        about)     about_cmd ;;
        version)   version_cmd ;;
        pwd)       pwd_cmd ;;
        hour)      hour_cmd ;;
        age)       age_cmd "$args" ;;
        profil)    profil_cmd "$args" ;;
        passw)     passw_cmd "$args" ;;
        cd)        cd_cmd "$args" ;;
        ls)        ls_cmd "$args" ;;
        rm)        rm_cmd "$args" ;;
        httpget)   httpget_cmd "$args" ;;
        smtp)      smtp_cmd "$args" ;;
        open)      open_cmd "$args" ;;
        "")        ;;
        *)         echo "Commande inconnue : $input_cmd. Tapez 'help'." ;;
    esac
done
