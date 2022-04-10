*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Charger la page web
    Go To  ${Google_URL}
    Wait Until Page Contains  Google
    Mouse Down  xpath=//*[@id="L2AGLb"]/div
    Mouse Up  xpath=//*[@id="L2AGLb"]/div
    Wait Until Page Contains  Images

Chercher le site web
    Clear Element Text  name=q
    Input Text  name=q  amazon
    Click Element  xpath=/html/body/div[1]/div[2]/div/img
    Click Element  xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Wait Until Page Contains  Images

Naviguer vers le site amazon
    Click Element  xpath=//*[@id="rso"]/div[1]/div/div/div/div/div/div/div[1]/a/h3
    Wait Until Page Contains  Commandes

Rechercher le produit
    Click Element  xpath=//*[@id="sp-cc-accept"]
    Clear Element Text  xpath=//*[@id="twotabsearchtextbox"]
    Input Text  xpath=//*[@id="twotabsearchtextbox"]  shure sm58
    Click Element  xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains  shure sm58
