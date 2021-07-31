#!/bin/env bash

##########################################################
# Credit: Franklin Souza                                 #
# Telegram: @FranklinTech                                #
# Epic Games CLI Script                                  #
# Repo: https://github.com/derrod/legendary              #
# AUR: https://aur.archlinux.org/packages/legendary/     #
##########################################################

clear

ptbr () {
while true ; do
clear
printf "
 ███████╗██████╗ ██╗ ██████╗     ██████╗  █████╗ ███╗   ███╗███████╗███████╗     ██████╗██╗     ██╗
 ██╔════╝██╔══██╗██║██╔════╝    ██╔════╝ ██╔══██╗████╗ ████║██╔════╝██╔════╝    ██╔════╝██║     ██║
 █████╗  ██████╔╝██║██║         ██║  ███╗███████║██╔████╔██║█████╗  ███████╗    ██║     ██║     ██║
 ██╔══╝  ██╔═══╝ ██║██║         ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝  ╚════██║    ██║     ██║     ██║
 ███████╗██║     ██║╚██████╗    ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗███████║    ╚██████╗███████╗██║
 ╚══════╝╚═╝     ╚═╝ ╚═════╝     ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚══════╝     ╚═════╝╚══════╝╚═╝
                                                                                                  "
printf "\n"
printf " Escolha uma das opções abaixo:\n\n"
printf " [01] - Logar/Deslogar da Epic Games\n"
printf " [02] - Status\n"
printf " [03] - Listar jogos\n"
printf " [04] - Instalar jogo\n"
printf " [05] - Sincronizar os jogos\n"
printf " [06] - Desinstalar jogo\n"
printf " [07] - Executar um jogo\n"
printf " [08] - Listar jogos instalados e checar atualizações\n"
printf " [09] - Sair do programa\n\n"
read EPIC_GAMES
printf "\n"

if [ $EPIC_GAMES == '1' ] || [ $EPIC_GAMES == '01' ] ; then
  clear
  printf " O que deseja fazer?:\n\n"
  printf " [01] - Logar\n"
  printf " [02] - Deslogar\n\n"
  read LOGIN
  printf "\n\n"
  
  if [ $LOGIN == '1' ] || [ $LOGIN == '01' ] ; then
    legendary auth && echo && read -p ' Logado(a) com sucesso (PRESS ENTER TO CONTINUE...)'

  elif [ $LOGIN == '2' ] || [ $LOGIN == '02'] ; then
    legendary auth --delete && echo && read -p ' Deslogado(a) com sucesso (PRESS ENTER TO CONTINUE...)'
  fi

elif [ $EPIC_GAMES == '2' ] || [ $EPIC_GAMES == '02' ] ; then
  clear
  legendary status && echo && read -p ' PRESS ENTER TO CONTINUE...'

  elif [ $EPIC_GAMES == '3' ] || [ $EPIC_GAMES == '03' ] ; then
    clear
    legendary list-games && echo && read -p ' PRESS ENTER TO CONTINUE...'

  elif [ $EPIC_GAMES == '4' ] || [ $EPIC_GAMES == '04' ] ; then
    clear
    printf " Escolha uma das opções abaixo:\n\n"
    printf " [01] - Instalar jogo no PATH atual\n"
    printf " [02] - Instalar jogo em PATH desejado\n\n"
    read INSTALL_GAME
    printf "\n\n"
    if [ $INSTALL_GAME == '1' ] || [ $INSTALL_GAME == '01' ] ; then
      clear
      printf " Digite o APP Name:\n\n"
      read APP_NAME
      legendary install "$APP_NAME" && echo && read -p ' Download finalizado com sucesso (PRESS ENTER TO CONTINUE...)'
      clear
    elif [ $INSTALL_GAME == '2' ] || [ $INSTALL_GAME == '02' ] ; then
      clear
      printf " Digite o APP Name do jogo:\n\n"
      read APP_NAME1
      printf " \n\nAgora digite o PATH que deseja instalar (Ex: /home/user/Epic_Games)\n\n"
      read PATH_GAME
      printf "\n\n"
      legendary install "$APP_NAME1" --base-path "$PATH_GAME" && echo && read -p ' Download finalizado com sucesso (PRESS ENTER TO CONTINUE...)'
    fi

  elif [ $EPIC_GAMES == '5' ] || [ $EPIC_GAMES == '05' ] ; then 
    clear
    legendary sync-saves
    legendary -y egl-sync

  elif [ $EPIC_GAMES == '6' ] || [ $EPIC_GAMES == '06' ] ; then
    clear
    printf " Digite aqui o APP Name para desinstalar um jogo (PRESS ENTER TO CANCEL):\n\n"
    read UNINSTALL
    printf "\n\n"
    legendary uninstall "$UNINSTALL"

  elif [ $EPIC_GAMES == '7' ] || [ $EPIC_GAMES == '07' ] ; then
    clear
    printf "Escolha uma das opções:\n\n"
    printf " [01] - Jogar com internet\n"
    printf " [02] - Jogar sem internet\n\n"
    read LAUNCH_GAME
    printf "\n\n"

    if [ $LAUNCH_GAME == '1' ] || [ $LAUNCH_GAME == '01' ] ; then
      printf " Digite aqui o APP Name para executar um jogo:\n\n"
      read EXECUTE
      legendary launch "$EXECUTE" && clear

    elif [ $LAUNCH_GAME == '2' ] || [ $LAUNCH_GAME == '02' ]; then
      printf " Digite aqui o APP Name para executar um jogo:\n\n"
      read EXECUTE
      legendary launch $EXECUTE --offline --dry-run && clear

    else
      printf "\n Opção inválida...\n\n" && echo && read -p ' PRESS ENTER TO CONTINUE...'
    fi

  elif [ $EPIC_GAMES == '8' ] || [ $EPIC_GAMES == '08' ] ; then
    clear
    legendary list-installed --check-updates && echo && read -p " PRESS ENTER TO CONTINUE..."

  elif [ $EPIC_GAMES == '9' ] || [ $EPIC_GAMES == '09' ] ; then
    clear && exit 0

  else
    clear 
    read -p " Opção inválida, por favor tente novamente (PRESS ENTER TO CONTINUE...)"
    continue
fi
done
}

anylang () {
# Title - Main
while true ; do
clear
printf "
 ███████╗██████╗ ██╗ ██████╗     ██████╗  █████╗ ███╗   ███╗███████╗███████╗     ██████╗██╗     ██╗
 ██╔════╝██╔══██╗██║██╔════╝    ██╔════╝ ██╔══██╗████╗ ████║██╔════╝██╔════╝    ██╔════╝██║     ██║
 █████╗  ██████╔╝██║██║         ██║  ███╗███████║██╔████╔██║█████╗  ███████╗    ██║     ██║     ██║
 ██╔══╝  ██╔═══╝ ██║██║         ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝  ╚════██║    ██║     ██║     ██║
 ███████╗██║     ██║╚██████╗    ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗███████║    ╚██████╗███████╗██║
 ╚══════╝╚═╝     ╚═╝ ╚═════╝     ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚══════╝     ╚═════╝╚══════╝╚═╝
                                                                                                  "
printf "\n"
printf " Choose one of the options below:\n\n"
printf " [01] - Login/Off from your Epic Games account.\n"
printf " [02] - Status.\n"
printf " [03] - List Games.\n"
printf " [04] - Install a game.\n"
printf " [05] - Sync the games.\n"
printf " [06] - Uninstall a game.\n"
printf " [07] - Execute a game.\n"
printf " [08] - List Games and check for updates.\n"
printf " [09] - Exit from the program.\n\n"
read EPIC_GAMES
printf "\n"

if [ $EPIC_GAMES == '1' ] || [ $EPIC_GAMES == '01' ] ; then
  clear
  printf " What you need to do?:\n\n"
  printf " [01] - Login\n"
  printf " [02] - Logoff\n\n"
  read LOGIN
  printf "\n\n"
  
  if [ $LOGIN == '1' ] || [ $LOGIN == '01' ] ; then
    legendary auth && echo && read -p ' Logged in with sucess (PRESS ENTER TO CONTINUE...)'

  elif [ $LOGIN == '2' ] || [ $LOGIN == '02'] ; then
    legendary auth --delete && echo && read -p ' Logged out with sucess (PRESS ENTER TO CONTINUE...)'
  fi

elif [ $EPIC_GAMES == '2' ] || [ $EPIC_GAMES == '02' ] ; then
  clear
  legendary status && echo && read -p ' PRESS ENTER TO CONTINUE...'

  elif [ $EPIC_GAMES == '3' ] || [ $EPIC_GAMES == '03' ] ; then
    clear
    legendary list-games && echo && read -p ' PRESS ENTER TO CONTINUE...'

  elif [ $EPIC_GAMES == '4' ] || [ $EPIC_GAMES == '04' ] ; then
    clear
    printf " Choose one of the options below:\n\n"
    printf " [01] - Install a game in current PATH\n"
    printf " [02] - Install a game in another PATH\n\n"
    read INSTALL_GAME
    printf "\n\n"
    if [ $INSTALL_GAME == '1' ] || [ $INSTALL_GAME == '01' ] ; then
      clear
      printf " Write the APP Name:\n\n"
      read APP_NAME
      legendary install "$APP_NAME" && echo && read -p ' Download finished (PRESS ENTER TO CONTINUE...)'
      clear
    elif [ $INSTALL_GAME == '2' ] || [ $INSTALL_GAME == '02' ] ; then
      clear
      printf " Write the game APP Name: \n\n"
      read APP_NAME1
      printf " \n\nNow, write the PATH to install the game (Ex: /home/user/Epic_Games)\n\n"
      read PATH_GAME
      printf "\n\n"
      legendary install "$APP_NAME1" --base-path "$PATH_GAME" && echo && read -p ' Download finished with sucess. (PRESS ENTER TO CONTINUE...)'
    fi

  elif [ $EPIC_GAMES == '5' ] || [ $EPIC_GAMES == '05' ] ; then 
    clear
    legendary sync-saves
    legendary -y egl-sync

  elif [ $EPIC_GAMES == '6' ] || [ $EPIC_GAMES == '06' ] ; then
    clear
    printf " Write the app name to uninstall a game. (PRESS ENTER TO CANCEL):\n\n"
    read UNINSTALL
    printf "\n\n"
    legendary uninstall "$UNINSTALL"

  elif [ $EPIC_GAMES == '7' ] || [ $EPIC_GAMES == '07' ] ; then
    clear
    printf "Choose one of the options:\n\n"
    printf " [01] - Play with internet connection\n"
    printf " [02] - Play without internet connection\n\n"
    read LAUNCH_GAME
    printf "\n\n"

    if [ $LAUNCH_GAME == '1' ] || [ $LAUNCH_GAME == '01' ] ; then
      printf " Write here the APP Name to Launch the game:\n\n"
      read EXECUTE
      legendary launch "$EXECUTE" && clear

    elif [ $LAUNCH_GAME == '2' ] || [ $LAUNCH_GAME == '02' ]; then
      printf " Write here the APP Name to Launch the game:\n\n"
      read EXECUTE
      legendary launch $EXECUTE --offline --dry-run && clear

    else
      printf "\n Invalid Option...\n\n" && echo && read -p ' PRESS ENTER TO CONTINUE...'
    fi

  elif [ $EPIC_GAMES == '8' ] || [ $EPIC_GAMES == '08' ] ; then
    clear
    legendary list-installed --check-updates && echo && read -p " PRESS ENTER TO CONTINUE..."


  elif [ $EPIC_GAMES == '9' ] || [ $EPIC_GAMES == '09' ] ; then
    clear &&  exit 0

  else
    clear 
    read -p " Invalid option, try again... (PRESS ENTER TO CONTINUE...)"
    continue
fi
done
}

localeconf=$(echo $(cat /etc/locale.conf))

if [ $localeconf == "LANG=pt_BR.UTF-8" ] ; then
	ptbr
else
	anylang
fi

