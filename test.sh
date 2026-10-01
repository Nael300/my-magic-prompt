#!/bin/bash

# Nom du script principal
MAIN="./main.sh"

if [ ! -f "$MAIN" ]; then
    echo "Erreur : $MAIN est introuvable !"
    exit 1
fi

echo "=== DÉBUT DES TESTS AUTOMATISÉS DE MAGICPROMPT ==="
echo ""

# Fonction pour tester une commande
run_test() {
    local cmd="$1"
    echo "--- Test de la commande : '$cmd' ---"
    # On envoie la commande au main.sh via un 'echo' redirigé dans un 'coproc' ou un pipe
    echo -e "$cmd\nquit" | "$MAIN"
    echo ""
}

# 1. Test de l'aide
run_test "help"

# 2. Test de la description
run_test "about"

# 3. Test de la version
run_test "version"

# 4. Test du répertoire courant
run_test "pwd"

# 5. Test de l'heure
run_test "hour"

# 6. Test d'une commande inconnue (le cas *)
run_test "blablabla"

echo "=== TESTS TERMINÉS AVEC SUCCÈS ==="
