#!/bin/bash
# Projet : Terminal Hero
# Crée par : [Salissou Sofo] et [Boureima Souley Abdoul Wahabou]

# ==== Partie de Salissou Sofo ====
echo "Bienvenue dans le jeu : DEVINE LE NOMBRE !"
echo "J'ai choisi un nombre entre 1 et 20. Peux-tu le trouver ?"

# Génère un nombre aléatoire entre 1 et 20
nombre_secret=$(( $RANDOM % 20 + 1 ))
essais=0

# ==== Début de la boucle de jeu ====
while true; do
    # ==== Partie de Boureima Souley Abdoul Wahabou ====
    read -p "Entre ton nombre : " proposition

    # Vérifie que l'entrée est bien un nombre
    if ! [[ "$proposition" =~ ^[0-9]+$ ]]; then
        echo "Erreur : tu dois entrer un nombre."
        continue
    fi

    ((essais++))

    if (( proposition < nombre_secret )); then
        echo "C'est plus grand."
    elif (( proposition > nombre_secret )); then
        echo "C'est plus petit."
    else
        echo "Bravo ! Tu as trouvé en $essais essai(s) !"
        break
    fi
done
