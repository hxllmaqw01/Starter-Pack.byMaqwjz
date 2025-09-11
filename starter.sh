
            #!/data/data/com.termux/files/usr/bin/bash

# 🎨 Rəng kodları
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
RESET='\033[0m'

clear
echo -e "${RED}███${YELLOW}╗   ${RED}███${YELLOW}╗ ${GREEN} █████${CYAN}╗ ${RED} ██████${CYAN}╗ ${GREEN}██${CYAN}╗    ${GREEN}██${CYAN}╗${RESET}"
echo -e "${RED}████${YELLOW}╗ ${RED}████${YELLOW}║${GREEN}██${CYAN}╔══${GREEN}██${CYAN}╗${RED}██${CYAN}╔═══${RED}██${CYAN}╗${GREEN}██${CYAN}║    ${GREEN}██${CYAN}║${RESET}"
echo -e "${RED}██${YELLOW}╔${RED}████${YELLOW}╔${RED}██${YELLOW}║${GREEN}███████${CYAN}║${GREEN}██${CYAN}║   ${RED}██${CYAN}║${GREEN}██${CYAN}║ █╗ ${GREEN}██${CYAN}║${RESET}"
echo -e "${RED}██${YELLOW}║╚${RED}██╔╝${YELLOW}██${RED}║${GREEN}██${CYAN}╔══${GREEN}██${CYAN}║${GREEN}██${CYAN}║   ${RED}██${CYAN}║${GREEN}██${CYAN}║███╗${GREEN}██${CYAN}║${RESET}"
echo -e "${RED}██${YELLOW}║ ╚═╝ ${RED}██${YELLOW}║${GREEN}██${CYAN}║  ${GREEN}██${CYAN}║╚${RED}██████${CYAN}╔╝╚${GREEN}███╔███╔╝${RESET}"
echo -e "${CYAN}╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝   ╚══╝╚══╝ ${RESET}"

echo -e "${YELLOW}=============================="
echo -e "     ${GREEN}MAQWJZ Starter Pack"
echo -e "${YELLOW}==============================${RESET}"

echo
echo -e "${CYAN}Seçim et:${RESET}"
echo -e "${GREEN}1) Əsas Paketlər"
echo "2) Sqlmap"
echo "3) Zphisher"
echo "4) Metasploit"
echo "5) Ngrok"
echo -e "0) Çıxış${RESET}"
echo

read -p "Seçim et (0-5): " choice

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
            echo -e "${GREEN}✅ Sqlmap artıq quraşdırılıb!${RESET}"
            cd ~/sqlmap && python3 sqlmap.py
        else
            git clone https://github.com/sqlmapproject/sqlmap ~/sqlmap
            echo -e "${GREEN}✅ Sqlmap quraşdırıldı!${RESET}"
            cd ~/sqlmap && python3 sqlmap.py
        fi
        ;;
    3)
        echo -e "${CYAN}🔎 Zphisher yoxlanılır...${RESET}"
        if [ -d "$HOME/zphisher" ]; then
            echo -e "${GREEN}✅ Zphisher artıq quraşdırılıb!${RESET}"
            cd ~/zphisher && bash zphisher.sh
        else
            git clone https://github.com/htr-tech/zphisher ~/zphisher
            echo -e "${GREEN}✅ Zphisher quraşdırıldı!${RESET}"
            cd ~/zphisher && bash zphisher.sh
        fi
        ;;
    4)
        echo -e "${CYAN}🔎 Metasploit yoxlanılır...${RESET}"
        if command -v msfconsole >/dev/null 2>&1; then
            echo -e "${GREEN}✅ Metasploit artıq quraşdırılıb!${RESET}"
            msfconsole
        else
            pkg install unstable-repo -y
            pkg install metasploit -y
            echo -e "${GREEN}✅ Metasploit quraşdırıldı!${RESET}"
            msfconsole
        fi
        ;;
    5)
        echo -e "${CYAN}🔎 Ngrok yoxlanılır...${RESET}"
        if [ -f "$HOME/ngrok" ]; then
            echo -e "${GREEN}✅ Ngrok artıq quraşdırılıb!${RESET}"
            ./ngrok version
        else
            wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip -O ngrok.zip
            unzip ngrok.zip
            chmod +x ngrok
            rm ngrok.zip
            echo -e "${GREEN}✅ Ngrok quraşdırıldı!${RESET}"
            ./ngrok version
        fi
        ;;
    0)
        echo -e "${RED}🚪 Çıxış edildi.${RESET}"
        exit
        ;;
    *)
        echo -e "${RED}⚠️ Yanlış seçim!${RESET}"
        ;;
esac
