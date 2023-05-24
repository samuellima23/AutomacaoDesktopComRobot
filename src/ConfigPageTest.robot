*** Settings ***

Documentation Acessar a pagina de idiomas do Google Chrome
Test Setup    Add Needed Image Path
Library       SikuliLibrary
Library       C:/Users/samue/Desktop/Robot-Framework-Pywinauto-Library-master/PywinautoLibrary.py

*** Variables ***

${IMAGE_DIR}      ${CURDIR}\\img

*** Test Cases ***

Abrir a pagina de idiomas

    Abrir o chrome
    Clicar em personalizar e controlar o Google Chrome
    Clicar em configurações
    Validar que configurações foi aberto
    Clicar em idiomas
    Validar que idiomas foi aberto

*** Keywords ***

Add Needed Image Path
    Add Image Path                          ${IMAGE_DIR}
Abrir o chrome
    Start Application                C:/Program Files/Google/Chrome/Application/chrome.exe
Clicar em personalizar e controlar o Google Chrome

Clicar em configurações