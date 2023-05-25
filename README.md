# Chrome Desktop Automação
Esse repositório contém automação de alguns testes desktop para a aplicação do Google Chrome. Os sub-tópicos abaixo descrevem algumas características do projeto

## Tecnologias utilizadas
- Python (https://www.python.org/downloads/)
- Robot Framework (https://pypi.org/project/robotframework/)
- SikuliLibrary (https://github.com/rainmanwy/robotframework-SikuliLibrary)
- PyWinAuto (https://github.com/Altran-PT-GDC/Robot-Framework-Pywinauto-Library).

## Testes Automatizados
Testes para validar que a página de idiomas da aplicação desktop Google Chrome está presente dentro de configurações e foi aberta corretamente.

## Notas Gerais
- Nesse teste foi utilizado a biblioteca do SikuliLibrary, e a PyWinAuto com o intuito de usar o start application que teve um comportamento melhor ao abrir a aplicação.
- O Sikuli usa a abordagem de reconhecimento visual para identificar elementos na interface do usuário com base em padrões visuais, em vez de depender de identificadores específicos, como IDs ou nomes de elementos. Ele é capaz de localizar e interagir com elementos na tela por meio de capturas de tela e busca de correspondências visuais.

## Execução dos testes
- Para execução dos testes é necessário a instalação do Python, Robot, Sikuli e PywinAuto todos podem ser encontrados no tópico de tecnologias utilizadas.
- Para executar um teste em específico é necessário rodar o comando: Robot nomedoarquivo.robot.

## Evidências dos testes
![image](https://github.com/samuellima23/AutomacaoDesktopComRobot/assets/33026663/74ec07a8-310a-44ad-a4ce-199c8b0a9dcf)

![image](https://github.com/samuellima23/AutomacaoDesktopComRobot/assets/33026663/4395f1bf-b6d9-4933-80d9-a48cc0719638)


