*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Choisir Produit
    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[7]/div/div/div/div/div[3]/div[1]/h2/a
    Wait Until Page Contains  Ajouter au panier

Ajouter au panier
    Click Element  xpath=//*[@id="add-to-cart-button"]
    Wait Until Page Contains  Assurance
    Mouse Down  xpath=//*[@id="dp-container"]
    Mouse Up  xpath=//*[@id="dp-container"]
    Wait Until Page Contains  Ajouté au panier
