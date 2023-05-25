## O caminho manual do Pywinauto é por conta de alguns erros ao somente importar via código
*** Settings ***
Documentation   Acessar a pagina de idiomas do Google Chrome
Test Setup      Add Needed Image Path
Library         SikuliLibrary
Library         C:/Users/samue/Desktop/Robot-Framework-Pywinauto-Library-master/PywinautoLibrary.py

##Variáveis usadas na automação
*** Variables ***
${IMAGE_DIR}      C:/Users/samue/Desktop/RobotDesktop/img
${CHROME_DIR}     C:/Program Files/Google/Chrome/Application/chrome.exe

## Casos de testes para validar que a automação abre corretamente a página de idiomas
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
## Adicionando a pasta que o Sikuli vai utilizar para buscar as imagens
Add Needed Image Path
    Add Image Path    ${IMAGE_DIR}
## Abrindo o chrome
Abrir o chrome
    Start Application    ${CHROME_DIR}
## O cenário em questão é de quando o chrome possui vários perfis adicionados, onde precisamos clicar em logar em algum dos perfis
Clicar em login
    SikuliLibrary.Click    login.png
## Clicar na opção de personalizar e controlar o chrome
Clicar em personalizar e controlar o Google Chrome
    SikuliLibrary.Click    config_personalização.png
## Clicar na opção de configurações
Clicar em configurações
    SikuliLibrary.Click    clicar_configurações.png
##Para validar que a pagina de configurações foi aberta, identificamos a url de settings
Validar que configurações foi aberto
    SikuliLibrary.Screen should contain    configurações.png
    SikuliLibrary.Click Text      chrome://settings
## Clicar na opção de idiomas
Clicar em idiomas
    SikuliLibrary.Click    clicar_idiomas.png
## Para validar que a pagina de idiomas foi aberta, identificamos a url de idiomas
Validar que idiomas foi aberto
    SikuliLibrary.Screen should contain    chrome_settings_languages.png
    SikuliLibrary.Click    chrome_settings_languages.png