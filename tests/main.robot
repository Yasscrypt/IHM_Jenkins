*** Settings ***
Resource  ../ressources/common.robot
Resource  ../ressources/PO/PageAccueil.robot
Resource  ../ressources/PO/PageProduit.robot
Resource  ../ressources/PO/PagePanier.robot

Suite Setup  common.Begin Web Test
Suite Teardown  common.End Web Test

*** Test Cases ***
Voir produits diponible
    PageAccueil.Charger la page web
    PageAccueil.Chercher le site web
    PageAccueil.Naviguer vers le site amazon
    PageAccueil.Rechercher le produit

Choisir un produit
    PageProduit.Choisir Produit
    PageProduit.Ajouter au panier

Passer la commande
    PagePanier.Aller au panier
    PagePanier.Passer la commande
