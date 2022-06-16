#Variavel de versão
CopSim=CoppeliaSim_Edu_V4_3_0_rev10_Ubuntu20_04

clear
echo "####################################################################################"
echo "##										##"
echo "##                          Instalando CoppeliaSim EDU				##"
echo "##										##"
echo "####################################################################################"
echo ""
echo "---> Baixando instalador <---"
echo ""
wget -c https://www.coppeliarobotics.com/files/$CopSim.tar.xz
echo ""
echo "---> Instalando CoppeliaSim em /opt/ <---"
echo ""
sudo tar -xvf $CopSim.tar.xz -C /opt/
echo ""
echo "---> Deletando instalador <---"
echo ""
rm $CopSim.tar.xz
echo ""
echo "---> Deletando instalação antiga (se houver) <---"
echo ""
rm /opt/CoppeliaSim
echo ""
echo "---> Renomeando instalação para /opt/CoppeliaSim <---"
echo ""
sudo mv /opt/$CopSim /opt/CoppeliaSim
echo ""
echo "---> Baixando Icone <---"
echo ""
sudo wget -O /opt/CoppeliaSim/coppeliaSim.svg https://raw.githubusercontent.com/LabRobotica/CoppeliaSim-Linux-Install/main/coppeliaSim.svg
echo ""
echo "---> Criando Link simbólico para CoppeliaSim em /usr/bin <---"
echo ""
sudo ln -sf /opt/CoppeliaSim/coppeliaSim.sh /usr/bin/coppeliaSim
echo ""
echo "---> Criando atalho no menu do sistema <---"
echo ""
sudo sh -c 'echo "[Desktop Entry]" > /usr/share/applications/coppeliaSim.desktop'
sudo sh -c 'echo "Name=CoppeliaSim EDU" >> /usr/share/applications/coppeliaSim.desktop'
sudo sh -c 'echo "Comment=CoppeliaSim, anteriormente conhecido como V-REP, é um simulador robótico usado na indústria, educação e pesquisa." >> /usr/share/applications/coppeliaSim.desktop'
sudo sh -c 'echo "Exec=coppeliaSim" >> /usr/share/applications/coppeliaSim.desktop'
sudo sh -c 'echo "Icon=/opt/CoppeliaSim/coppeliaSim.svg" >> /usr/share/applications/coppeliaSim.desktop'
sudo sh -c 'echo "Type=Application" >> /usr/share/applications/coppeliaSim.desktop'
sudo sh -c 'echo "Categories=Development;" >> /usr/share/applications/coppeliaSim.desktop'
sudo sh -c 'echo "Keywords=V-REP;VREP;" >> /usr/share/applications/coppeliaSim.desktop'


clear
echo "################################################################################"
echo "###                                                                          ###"
echo "###            Instalação do CoppeliaSim EDU finalizada com sucesso          ###"
echo "###                                                                          ###"
echo "################################################################################"
echo ""



