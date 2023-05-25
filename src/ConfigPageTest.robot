*** Settings ***
Documentation   Acessar a pagina de idiomas do Google Chrome
Test Setup      Add Needed Image Path
Library         SikuliLibrary
Library         C:/Users/samue/Desktop/Robot-Framework-Pywinauto-Library-master/PywinautoLibrary.py

*** Variables ***
${IMAGE_DIR}      C:/Users/samue/Desktop/RobotDesktop/img
${CHROME_DIR}     C:/Program Files/Google/Chrome/Application/chrome.exe

*** Test Cases ***
Abrir a pagina de idiomas

    Abrir o chrome
    Clicar em login
    Clicar em personalizar e controlar o Google Chrome
    Clicar em configurações
    Validar que configurações foi aberto
    Clicar em idiomas
    Validar que idiomas foi aberto

*** Keywords ***
Add Needed Image Path
    Add Image Path    ${IMAGE_DIR}
Abrir o chrome
    Start Application    ${CHROME_DIR}
Clicar em login
    SikuliLibrary.Click    login.png
Clicar em personalizar e controlar o Google Chrome
    SikuliLibrary.Click    config_personalização.png
Clicar em configurações
    SikuliLibrary.Click    clicar_configurações.png
Validar que configurações foi aberto
    SikuliLibrary.Screen should contain    configurações.png
    SikuliLibrary.Click Text      chrome://settings
Clicar em idiomas
    SikuliLibrary.Click    clicar_idiomas.png
Validar que idiomas foi aberto
    SikuliLibrary.Screen should contain    chrome_settings_languages.png
    SikuliLibrary.Click    chrome_settings_languages.png