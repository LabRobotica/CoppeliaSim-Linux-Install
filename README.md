# Instalador Online para CoppeliaSim EDU

[CoppeliaSim](https://www.coppeliarobotics.com), anteriormente conhecido como V-REP, é um simulador robótico na indústria, educação e pesquisa. Ele foi originalmente desenvolvido dentro da Toshiba R&D e atualmente está sendo desenvolvido e mantido ativamente pela Coppelia Robotics AG, uma empresa localizada em Zurique, Suíça.

Esse repositório oferece um instalador automático da versão educacional do CoppeliaSim para ser instalado nos computadores do Laboratório de Robótica e pelos professores e estudantes do CEFET-MG em seus computadores pessoais que rodem Linux.

Este script foi testado no Debian 11 e Lubuntu 22.04, mas deve funcionar em outras versões e distribuições.


## Instalação automática (auto install script)

Execute o script de instação com o comando abaixo:

```bash
curl https://raw.githubusercontent.com/LabRobotica/RobixLinux/main/robix-debian.sh | bash
```

Leia atentamente as mensagens do terminal a procura de algum erro. Caso algum erro aconteça, o instalador será finalizado precomente, sem a mensagem "Instalação do CoppeliaSim finalizada com sucesso".

OBS: Caso o ```cURL``` não esteja instalado, execute o comando:

```bash
sudo apt install curl
```
