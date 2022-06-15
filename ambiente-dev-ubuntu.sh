#! /bin/bash

#Executar comandos a seguir para atualizar os pacotes
sudo apt update -y
sudo apt upgrade -y

# Instalar pacotes a seguir
sudo apt install dkms make perl gcc build-essential git curl -y

# Instalando Python 3.10 (opcional)
sudo apt install python3.10-full python3.10-dev

# Baixar e instalar o VS Code: https://code.visualstudio.com/download
# Baixar e instalar o Google Chrome: https://www.google.com/intl/pt-BR/chrome/

# Abaixo tudo é opcional

# Instalar e configurar ZSH
sudo apt install zsh -y
chsh -s /bin/zsh
zsh

# Instalar Oh-my-zsh! -> https://ohmyz.sh/
sh -c " $( curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh ) "

# Instalar prompt da nave espacial
# https://github.com/spaceship-prompt/spaceship-prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git " $ZSH_CUSTOM /themes/spaceship-prompt " --depth=1
ln -s " $ZSH_CUSTOM /themes/spaceship-prompt/spaceship.zsh-theme " "  $ ZSH_CUSTOM /themes/spaceship.zsh-theme "

# Mudar ~/.zshrc -> ZSH_THEME="nave espacial"

# Instalando Sugestões Automáticas do Zsh
# https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM :- ~ / .oh-my-zsh / custom} /plugins/zsh-autosuggestions

# Instalar destaque de sintaxe Zsh
# https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM :- ~ / .oh-my-zsh / custom} /plugins/zsh-syntax-highlighting

# Plugins Mudar
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Fonte opcional (https://github.com/pdf/ubuntu-mono-powerline-ttf)
mkdir -p ~ /.fonts
git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git ~ /.fonts/ubuntu-mono-powerline-ttf
fc-cache -vf

#REINICIA !!!!!!!!!!!!!!!!!!!!!
