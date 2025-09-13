#!/bin/bash

# Rənglər
CYAN="\033[96m"
GREEN="\033[92m"
YELLOW="\033[93m"
RED="\033[91m"
RESET="\033[0m"

# Banner funksiyası
banner() {
echo -e "${CYAN}"
echo " __  __                      _     "
echo "|  \/  |                    (_)    "
echo "| \  / | __ _  __ ___      ___ ____ "
echo "| |\/| |/ _\` |/ _\` \ \ /\ / / |_  /"
echo "| |  | | (_| | (_| |\ V  V /| |/ / "
echo "|_|  |_|\__,_|\__, | \_/\_/ | /___|"
echo "                | |       _/ |     "
echo "                |_|      |__/      "
echo -e "${GREEN}"
echo "========================================"
echo "     Tool created by MAQWJZ & NIKONSJZ"
echo "========================================"
echo -e "${RESET}"
}

# Spinner funksiyası
spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}

# Tool yoxlama və yükləmə funksiyası
install_tool() {
    local name=$1
    local repo=$2
    local cmd=$3

    if [ ! -d "$HOME/$name" ]; then
        echo -e "${YELLOW}[+] Installing $name...${RESET}"
        git clone $repo "$HOME/$name" & spinner $!
        echo -e "${GREEN}[+] $name installed successfully!${RESET}"
    else
        echo -e "${GREEN}[!] $name already installed.${RESET}"
    fi
    echo -e "${CYAN}[+] Launching $name...${RESET}"
    cd "$HOME/$name"
    eval $cmd
    cd ~
}

# Menü funksiyası
menu() {
banner
echo -e "${CYAN}==========================================${RESET}"
echo -e "[01] Nmap           [02] Hydra           [03] SQLMap          [04] Metasploit"
echo -e "[05] ngrok          [06] angryFuzzer     [07] Red_Hawk        [08] Weeman"
echo -e "[09] IPGeoLocation  [10] Cupp            [11] Instahack       [12] TwitterSniper"
echo -e "[13] viSQL          [14] Hash-Buster     [15] D-TECT          [16] Routersploit"
echo -e "[17] Zphisher       [18] Nexphisher      [99] Exit"
echo -e "${CYAN}==========================================${RESET}"
}

# Main loop
while true; do
    menu
    read -p "#: " choice
    case $choice in
        1) install_tool "nmap" "" "pkg install -y nmap" ;;
        2) install_tool "hydra" "" "pkg install -y hydra" ;;
        3) install_tool "sqlmap" "https://github.com/sqlmapproject/sqlmap.git" "python2 sqlmap.py" ;;
        4) install_tool "metasploit" "https://Auxilus.github.io/metasploit.sh" "bash metasploit.sh" ;;
        5) install_tool "ngrok" "https://github.com/themastersunil/ngrok.git" "./ngrok" ;;
        6) install_tool "angryFuzzer" "https://github.com/ihebski/angryFuzzer.git" "python2 angryFuzzer.py" ;;
        7) install_tool "RED_HAWK" "https://github.com/Tuhinshubhra/RED_HAWK.git" "php rhawk.php" ;;
        8) install_tool "weeman" "https://github.com/evait-security/weeman.git" "python2 weeman.py" ;;
        9) install_tool "IPGeoLocation" "https://github.com/maldevel/IPGeoLocation.git" "python ipgeolocation.py" ;;
        10) install_tool "cupp" "https://github.com/Mebus/cupp.git" "python cupp3.py" ;;
        11) install_tool "instahack" "https://github.com/avramit/instahack.git" "python hackinsta.py" ;;
        12) install_tool "TwitterSniper" "https://github.com/abdallahelsokary/TwitterSniper.git" "python TwitterSniper.py" ;;
        13) install_tool "viSQL" "https://github.com/blackvkng/viSQL.git" "python2 viSQL.py --help" ;;
        14) install_tool "Hash-Buster" "https://github.com/UltimateHackers/Hash-Buster.git" "python2 hash-buster.py" ;;
        15) install_tool "D-TECT" "https://github.com/shawarkhanethicalhacker/D-TECT.git" "python2 d-tect.py" ;;
        16) install_tool "routersploit" "https://github.com/reverse-shell/routersploit.git" "python2 rsf.py" ;;
        17) install_tool "zphisher" "https://github.com/htr-tech/zphisher.git" "bash zphisher.sh" ;;
        18) install_tool "nexphisher" "https://github.com/htr-tech/nexphisher.git" "bash nexphisher" ;;
        99) echo -e "${RED}Exiting... Goodbye!${RESET}"; exit 0 ;;
        *) echo -e "${RED}[!] Invalid option.${RESET}"; sleep 1 ;;
    esac
done
