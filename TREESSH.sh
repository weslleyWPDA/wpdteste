#!/bin/bash
clear
Menu() {
    clear
    echo -e '\n'
    echo -e "        \033[01;31m==========================\033[01;37m"
    echo -e "                 \033[01;32mTREESSH Menu\033[01;37m"
    echo -e "         \033[01;31m==========================\033[01;37m"
    echo -e "               \033[01;31m============\033[01;37m       "
    echo -e "                  \033[01;31m======\033[01;37m          "
    echo -e "                    \033[01;31m==\033[01;37m            "
    echo -e "        \033[01;31m_______________by: TREESSH v 1.2\033[01;37m"
    echo -e "        \033[01;31m______________________Wpda\033[01;37m"
    echo "                             "
    echo "                             "
    echo -e "   [ 1 ]  \033[01;32mInstalar Painel Web 20 FREE(DEBIAN 8)\033[01;37m"
    echo -e "   [ 2 ]  \033[01;32mInstalar SSHPLUS MANANGER FREE\033[01;37m"
    echo -e "   [ 3 ]  \033[01;32mINSTALL BKP via link SSHPLUS-MANANGER :81\033[01;37m"
    echo -e "   [ 4 ]  \033[01;32mSinc c/Painel(so na vps SSHPLUS-MAN)\033[01;37m"
    echo -e "   [ 5 ]  \033[01;32mInstall Tcp Weaker\033[01;37m"
    echo -e "   [ 6 ]  \033[01;32mReiniciar servidor a cada 4horas\033[01;37m"
    echo -e "   [ 7 ]  \033[01;32mLimpeza de Sistema(s/ Danos)\033[01;37m"
    echo -e "   [ 0 ]  \033[01;31mSAIR\033[01;37m"
    echo -e '\n'
    echo "ESCOLHA UMA OPÇÃO! "
    echo "                             "
    read opcao
    case $opcao in
    1) rm TREESSH; painel-20;;
    
    2) rm TREESSH; sshplus;;

    3) rm TREESSH; apache2;;
    
    4) rm TREESSH; rm inst; wget http://sshplus.xyz/revenda/confpainel/inst > /dev/null 2>&1; bash inst; Menu;;
    
    5) rm TREESSH; wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Install/tcptweaker.sh; chmod +x tcptweaker.sh; ./tcptweaker.sh; echo "INSTALACAO OK"; Menu;;
    
    6) rm TREESSH; reini;;
    
    7) rm TREESSH; apt-get autoclean; apt-get autoremove; Menu;;
    
    0) rm TREESSH; exit;;
    *) "Comando desconhecido" ; echo ; Menu;;
    esac
    }
    

apache2 () {
    clear
    echo -e " \033[01;32mInstall Reinicio a cada 4 Hrs\033[01;37m"
    echo -e " \033[01;32m--------------------------------\033[01;37m"
    echo "ESCOLHA ABAIXO"
    echo -e '\n'
    echo -e "[ 1 ] \033[01;32mCONFIRMAR\033[01;37m"
    echo "[ 2 ] Voltar"
      echo -e '\n'
    echo "ESCOLHA UMA OPÇÃO! "
    echo "                             "
    read opcao
    case $opcao in
     1) rm TREESSH; apt-get update && apt-get upgrade -y; apt-get install apache2 -y; nano /etc/apache2/ports.conf; Menu;;
    2) Voltar ;;
    *) "Comando desconhecido" ; echo ; Opcao1 ;;
    esac
}

reini () {
    clear
    echo -e " \033[01;32mInstall Reinicio a cada 4 Hrs\033[01;37m"
    echo -e " \033[01;32m--------------------------------\033[01;37m"
    echo "ESCOLHA ABAIXO"
    echo -e '\n'
    echo -e "[ 1 ] \033[01;32mCONFIRMAR\033[01;37m"
    echo "[ 2 ] Voltar"
      echo -e '\n'
    echo "ESCOLHA UMA OPÇÃO! "
    echo "                             "
    read opcao
    case $opcao in
     1) rm TREESSH; (crontab -l 2>/dev/null; echo "0 */4 * * * /sbin/reboot") | crontab -; echo "REINICIO A CADA 4HRs"; Menu;;
    2) Voltar ;;
    *) "Comando desconhecido" ; echo ; Opcao1 ;;
    esac
}

sshplus () {
    clear
    echo -e " \033[01;32mInstalar SSHPLUS MANANGER Free\033[01;37m"
    echo -e " \033[01;32m--------------------------------\033[01;37m"
    echo "ESCOLHA ABAIXO"
    echo -e '\n'
    echo -e "[ 1 ] \033[01;32mINICIAR INSTALACAO\033[01;37m"
    echo "[ 2 ] Voltar"
      echo -e '\n'
    echo "ESCOLHA UMA OPÇÃO! "
    echo "                             "
    read opcao
    case $opcao in
     1) rm TREESSH; apt-get update -y; apt-get upgrade -y; wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Plus; chmod 777 Plus; ./Plus; Menu;;
    2) Voltar ;;
    *) "Comando desconhecido" ; echo ; Opcao1 ;;
    esac
}

painel-20 () {
    clear
    echo -e " \033[01;32mInstalar PAINEL SSH 20 Free\033[01;37m"
    echo -e " \033[01;32m--------------------------------\033[01;37m"
    echo "ESCOLHA ABAIXO"
    echo -e '\n'
    echo -e "[ 1 ] \033[01;32mINICIAR INSTALACAO\033[01;37m"
    echo "[ 2 ] Voltar"
      echo -e '\n'
    echo "ESCOLHA UMA OPÇÃO! "
    echo "                             "
    read opcao
    case $opcao in
     1) rm TREESSH; apt-get update -y; apt-get upgrade -y; wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Install/Panel_Web/panel_v20/install; chmod +x install; ./install; Menu;;
    2) Voltar ;;
    *) "Comando desconhecido" ; echo ; Opcao1 ;;
    esac
}

Voltar() {
    clear
        Menu
}

Sair() {
    clear
    rm TREESSH; Menu
}
clear
Menu

