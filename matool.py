import os

CYAN = "\033[96m"
GREEN = "\033[92m"
RED = "\033[91m"
RESET = "\033[0m"

def banner():
    os.system("clear")
    print(f"""{CYAN}
__  __                      _     
|  \/  |                    (_)    
| \  / | __ _  __ ___      ___ ____ 
| |\/| |/ _` |/ _` \ \ /\ / / |_  /
| |  | | (_| | (_| |\ V  V /| |/ / 
|_|  |_|\__,_|\__, | \_/\_/ | /___|
                | |       _/ |     
                |_|      |__/      
{RESET}{GREEN}
========================================
     Tool created by MAQWJZ & NİKONSJZ
========================================
{RESET}""")

def menu():
    print(f"""{CYAN}[::] Select an Option [::]{RESET}
{GREEN}[00]{RESET} Install ALL Tools
{GREEN}[01]{RESET} Install Nmap
{GREEN}[02]{RESET} Install Hydra
{GREEN}[03]{RESET} Install SQLMap
{GREEN}[04]{RESET} Install Metasploit
{GREEN}[05]{RESET} Install Ngrok
{GREEN}[06]{RESET} Install Kali Nethunter
{GREEN}[07]{RESET} Install angryFuzzer
{GREEN}[08]{RESET} Install Red_Hawk
{GREEN}[09]{RESET} Install Weeman
{GREEN}[10]{RESET} Install IPGeoLocation
{GREEN}[11]{RESET} Install Cupp
{GREEN}[12]{RESET} Install Instahack
{GREEN}[13]{RESET} Install TwitterSniper
{GREEN}[14]{RESET} Install Ubuntu
{GREEN}[15]{RESET} Install Fedora
{GREEN}[16]{RESET} Install viSQL
{GREEN}[17]{RESET} Install Hash-Buster
{GREEN}[18]{RESET} Install D-TECT
{GREEN}[19]{RESET} Install Routersploit
------------------------------------------
{GREEN}[99]{RESET} Exit
""")

def install_all():
    os.system("pkg update -y && pkg install -y git python python2 wget nmap hydra")
    os.system("cd ~ && git clone https://github.com/sqlmapproject/sqlmap.git")
    os.system("cd ~ && wget https://Auxilus.github.io/metasploit.sh && bash metasploit.sh")
    os.system("cd ~ && git clone https://github.com/themastersunil/ngrok.git")
    os.system("cd ~ && git clone https://github.com/ihebski/angryFuzzer.git && cd angryFuzzer && pip2 install -r requirements.txt && pip2 install requests")
    os.system("cd ~ && git clone https://github.com/Tuhinshubhra/RED_HAWK")
    os.system("cd ~ && git clone https://github.com/evait-security/weeman.git && chmod +x weeman/weeman.py")
    os.system("cd ~ && git clone https://github.com/maldevel/IPGeoLocation.git && cd IPGeoLocation && pip install -r requirements.txt")
    os.system("cd ~ && git clone https://github.com/Mebus/cupp.git")
    os.system("pip install requests beautifulsoup4 mechanicalsoup")
    os.system("cd ~ && git clone https://github.com/avramit/instahack.git")
    os.system("cd ~ && git clone https://github.com/abdallahelsokary/TwitterSniper.git")
    os.system("cd ~ && git clone https://github.com/blackvkng/viSQL.git")
    os.system("cd ~ && git clone https://github.com/UltimateHackers/Hash-Buster.git")
    os.system("cd ~ && git clone https://github.com/shawarkhanethicalhacker/D-TECT.git")
    os.system("cd ~ && git clone https://github.com/reverse-shell/routersploit.git && cd routersploit && pip2 install -r requirements.txt -r requirements-dev.txt")
    print(f"{GREEN}[+] All tools installed successfully!{RESET}")

while True:
    banner()
    menu()
    choice = input(f"{CYAN}Select Option > {RESET}")
    if choice == "00":
        install_all()
    elif choice == "01":
        os.system("pkg install -y nmap")
    elif choice == "02":
        os.system("pkg install -y hydra")
    elif choice == "03":
        os.system("cd ~ && git clone https://github.com/sqlmapproject/sqlmap.git")
    elif choice == "04":
        os.system("cd ~ && wget https://Auxilus.github.io/metasploit.sh && bash metasploit.sh")
    elif choice == "05":
        os.system("cd ~ && git clone https://github.com/themastersunil/ngrok.git")
    elif choice == "06":
        os.system("cd ~ && git clone https://github.com/Hax4us/Nethunter-In-Termux.git && cd Nethunter-In-Termux && chmod +x kalinethunter")
    elif choice == "07":
        os.system("cd ~ && git clone https://github.com/ihebski/angryFuzzer.git && cd angryFuzzer && pip2 install -r requirements.txt")
    elif choice == "08":
        os.system("cd ~ && git clone https://github.com/Tuhinshubhra/RED_HAWK")
    elif choice == "09":
        os.system("cd ~ && git clone https://github.com/evait-security/weeman.git && chmod +x weeman/weeman.py")
    elif choice == "10":
        os.system("cd ~ && git clone https://github.com/maldevel/IPGeoLocation.git && cd IPGeoLocation && pip install -r requirements.txt")
    elif choice == "11":
        os.system("cd ~ && git clone https://github.com/Mebus/cupp.git")
    elif choice == "12":
        os.system("cd ~ && git clone https://github.com/avramit/instahack.git")
    elif choice == "13":
        os.system("cd ~ && git clone https://github.com/abdallahelsokary/TwitterSniper.git")
    elif choice == "14":
        os.system("cd ~ && git clone https://github.com/Neo-Oli/termux-ubuntu.git && cd termux-ubuntu && bash ubuntu.sh")
    elif choice == "15":
        os.system("apt update && apt install wget -y && wget https://raw.githubusercontent.com/nmilosev/termux-fedora/master/termux-fedora.sh")
    elif choice == "16":
        os.system("cd ~ && git clone https://github.com/blackvkng/viSQL.git")
    elif choice == "17":
        os.system("cd ~ && git clone https://github.com/UltimateHackers/Hash-Buster.git")
    elif choice == "18":
        os.system("cd ~ && git clone https://github.com/shawarkhanethicalhacker/D-TECT.git")
    elif choice == "19":
        os.system("cd ~ && git clone https://github.com/reverse-shell/routersploit.git && cd routersploit && pip2 install -r requirements.txt -r requirements-dev.txt")
    elif choice == "99":
        print(f"{RED}Exiting... Goodbye!{RESET}")
        break
    else:
        print(f"{RED}[!] Invalid Option!{RESET}")
    input(f"{CYAN}Press Enter to return to menu...{RESET}")
