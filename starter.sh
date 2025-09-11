#!/data/data/com.termux/files/usr/bin/bash

# Rəng kodları
CYAN='\033[1;36m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
RESET='\033[0m'

clear

# Banner
echo -e "${CYAN}============================================${RESET}"
echo -e "          ${GREEN}M A Q W J Z${RESET} Starter Pack  Version: 2.3.5"
echo -e "${CYAN}============================================${RESET}"
echo -e "${YELLOW}[-] Tool Created by MaqwJz${RESET}"
echo

# Menyu
echo -e "${CYAN}[01]${GREEN} Əsas Paketlər       ${CYAN}[02]${GREEN} Sqlmap"
echo -e "${CYAN}[03]${GREEN} Zphisher            ${CYAN}[04]${GREEN} Metasploit"
echo -e "${CYAN}[05]${GREEN} Ngrok               ${CYAN}[00]${RED} Çıxış"
echo
read -p "[::] Seçim et: " choice

case $choice in
    1)
        echo -e "${YELLOW}📦 Əsas paketlər yoxlanılır...${RESET}"
        pkg update -y && pkg upgrade -y
        pkg install git python python-pip php curl wget nano openssh clang hydra nmap unzip -y
        echo -e "${GREEN}✅ Əsas paketlər hazırdır!${RESET}"
        ;;
    2)
        echo -e "${CYAN}🔎 Sqlmap yoxlanılır...${RESET}"
        if [ -d "$HOME/sqlmap" ]; then
            cd ~/sqlmap && python3 sqlmap.py
        else
            git clone https://github.com/sqlmapproject/sqlmap ~/sqlmap
            cd ~/sqlmap && python3 sqlmap.py
        fi
        ;;
    3)
        echo -e "${CYAN}🔎 Zphisher yoxlanılır...${RESET}"
        if [ -d "$HOME/zphisher" ]; then
            cd ~/zphisher && bash zphisher.sh
        else
            git clone https://github.com/htr-tech/zphisher ~/zphisher
            cd ~/zphisher && bash zphisher.sh
        fi
        ;;
    4)
        echo -e "${CYAN}🔎 Metasploit yoxlanılır...${RESET}"
        if command -v msfconsole >/dev/null 2>&1; then
            msfconsole
        else
            pkg install unstable-repo -y
            pkg install metasploit -y
            msfconsole
        fi
        ;;
    5)
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
