#!/bin/bash

echo"$(tput setaf 10)
   ______     __                __  __  _ 
  / _______  / /__  _________ _/ /_/ /_(_)
 / /   / _ \/ / _ \/ ___/ __  / __/ __/ / 
/ /___/  __/ /  __/ /  / /_/ / /_/ /_/ /  
\____/\___/_/\___/_/   \__,_/\__/\__/_/$(tput setaf 7)"

echo""

echo "$(tput setaf 10)[Macci]$(tput setaf 7) Olá usuário, hoje serei seu assistente de instalação, pode me chamar de Macci :D"
sleep 4
echo "$(tput setaf 10)[Macci]$(tput setaf 7)Estou verificando se você já possui o Java versão 17 instalado"
sleep 4
java --version
if [ $? -eq 0 ]
        then
        echo "$(tput setaf 10)[Macci]$(tput setaf 7)Hmm.. vejo aqui que já possui o java instalado! :D"
        sleep 5
        echo "$(tput setaf 10)[Macci]$(tput setaf 7)Já que você já possui o Java instalado, vamos agora fazer a clonagem da nossa aplicação!";
        sleep 5
        sudo git clone https://github.com/Celeratti/Jar.git
        sleep 5
        echo "$(tput setaf 10)[Macci]$(tput setaf 7)Estamos quase finalizando..."
        sleep 5
        sudo apt upgrade && sudo apt update -y
        sleep 3
	sudo bash docker.sh
        echo "$(tput setaf 10)[Macci]$(tput setaf 7)Tudo pronto!, agora você pode executar a aplicação com o comando java - jar nomedoarquivo.jar, Até mais..."
        else
         echo "$(tput setaf 10)[Macci]$(tput setaf 7)Hmm.. vejo aqui que não  possui o java instalado! :O"
          sleep 5
           echo "$(tput setaf 10)[Macci]$(tput setaf 7)Gostaria de instalar o Java versão 17?  [S\N]"
           read inst
          if [ \"$inst\" == \"S\" ]
          then
                   echo "$(tput setaf 10)[Macci]$(tput setaf 7)Ótimo você escolheu intalar o Java!.. Vamos começar!"
sleep 5
                   sudo apt install openjdk-17-jdk openjdk-17-jre -y
                   sleep 5
                    echo "$(tput setaf 10)[Macci]$(tput setaf 7)Agora vamos atualizar os pacotes!"
                    sleep 5
                    sudo apt upgrade && sudo apt update -y
                    sleep 5
                     echo "$(tput setaf 10)[Macci]$(tput setaf 7)Instalação feita com sucesso! "
                     sleep 5
                      echo "$(tput setaf 10)[Macci]$(tput setaf 7)Agora vamos inicar a instalção da aplicação"
                      sleep 5
                        sudo git clone https://github.com/Celeratti/Jar.git
                        sleep 5
			sudo bash docker.sh
                        echo "$(tput setaf 10)[Macci]$(tput setaf 7)Tudo pronto!, agora você pode executar a aplicação com o comando java - jar nomedoarquivo.jar, Até mais.."
                                else
                                        echo "$(tput setaf 10)[Macci]$(tput setaf 7) Você optou por não instalar o Java no momento, até mais então!"

          fi
fi

