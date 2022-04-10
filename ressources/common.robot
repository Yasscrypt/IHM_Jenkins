*** Settings ***
Library  SeleniumLibrary
Resource  variables.robot

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${Browser}
    Maximize Browser Window

End Web Test
    Close Browser