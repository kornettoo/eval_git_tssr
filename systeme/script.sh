#!/bin/bash

#Demander l'emplacement du projet
echo "Où voulez-vous enregistrer le projet ? (Chemin absolu, ex : C:/Users/nom_du_pc/Desktop)"
read directory

# Nom du projet
echo "Quel est le nom de votre projet ?"
read project

# Se déplacer dans le dossier racine
cd "$directory" || { echo "Erreur : impossible d'accéder au dossier $directory"; exit 1; }

# Créer le dossier du projet
mkdir "$project" || { echo "Erreur : le dossier $project existe déjà ou ne peut pas être créé."; exit 1; }

# Se déplacer dans le dossier du projet
cd "$project" || { echo "Erreur : impossible d'accéder au dossier $project"; exit 1; }

# Créations des fichiers
touch index.html style.css readme.md

# le projet a été ajouté
echo "Le projet a été ajouté."