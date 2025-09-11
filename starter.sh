#!/data/data/com.termux/files/usr/bin/bash

# 🎨 Rəng kodları
CYAN='\033[1;36m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
RESET='\033[0m'

clear

# ASCII Banner
echo -e "${CYAN}  __  __                      _     ${RESET}"
echo -e "${CYAN} |  \\/  |                    (_)    ${RESET}"
echo -e "${CYAN} | \\  / | __ _  __ ___      ___ ____${RESET}"
echo -e "${CYAN} | |\\/| |/ _\` |/ _\` \\\\ \\ /\\ / / |_  /${RESET}"
echo -e "${CYAN} | |  | | (_| | (_| |\\ V  V /| |/ / ${RESET}"
echo -e "${CYAN} |_|  |_|\\__,_|\\__, | \\_/\\_/ | /___|${RESET}"
echo -e "${CYAN}                  | |       _/ |    ${RESET}"
echo -e "${CYAN}                  |_|      |__/     ${RESET}"
echo
echo -e "${YELLOW}[-] Tool Created by MaqwJz${RESET}"
echo

# Menyu
echo -e "${CYAN}[01]${GREEN} Əsas Paketlər       ${CYAN}[02]${GREEN} Sqlmap"
echo -e "${CYAN}[03]${GREEN} Nexphisher          ${CYAN}[04]${GREEN} Metasploit"
echo -e "${CYAN}[05]${GREEN} Ngrok               ${CYAN}[00]${RED} Çıxış"
echo

# İstifadəçi seçim
read -p "[::] Seçim et (0-5): " choice

case $choice in
    01)
        echo -e "${YELLOW}📦 Əsas paketlər yoxlanılır...${RESET}"
        pkg update -y && pkg upgrade -y
        pkg install git python python-pip php curl wget nano openssh clang hydra nmap unzip -y
        echo -e "${GREEN}✅ Əsas paketlər hazırdır!${RESET}"
        ;;
    02)
        echo -e "${CYAN}🔎 Sqlmap yoxlanılır...${RESET}"
        if [ -d "$HOME/sqlmap" ]; then
            cd ~/sqlmap && python3 sqlmap.py
        else
            git clone https://github.com/sqlmapproject/sqlmap ~/sqlmap
            cd ~/sqlmap && python3 sqlmap.py
        fi
        ;;
    03)
        echo -e "${CYAN}🔎 Nexphisher yoxlanılır...${RESET}"
        if [ -d "$HOME/nexphisher" ]; then
            cd ~/nexphisher && bash nexphisher
        else
            git clone https://github.com/htr-tech/nexphisher ~/nexphisher
            cd ~/nexphisher
            chmod +x *
            bash tmux_setup
            bash nexphisher
        fi
        ;;
    04)
        echo -e "${CYAN}🔎 Metasploit yoxlanılır...${RESET}"
        if command -v msfconsole >/dev/null 2>&1; then
            msfconsole
        else
            pkg install unstable-repo -y
            pkg install metasploit -y
            msfconsole
        fi
        ;;
    05)
        echo -e "${CYAN}🔎 Ngrok yoxlanılır...${RESET}"
        if [ -f "$HOME/ngrok" ]; then
            ./ngrok version
        else
            wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip -O ngrok.zip
            unzip ngrok.zip
            chmod +x ngrok
            rm ngrok.zip
            ./ngrok version
        fi
        ;;
    00)
        echo -e "${RED}🚪 Çıxış edildi.${RESET}"
        exit
        ;;
    *)
        echo -e "${RED}⚠️ Yanlış seçim!${RESET}"
        ;;
esac
