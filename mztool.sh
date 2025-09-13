import os

def banner():
    CYAN = "\033[96m"
    RESET = "\033[0m"
    GREEN = "\033[92m"

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
     Tool created by MAQWJZ & NIKONSJZ
     ‎‎‎‎‎‎‎                  cibildz💝
========================================
{RESET}""")

def menu():
    banner()
    print(""" 
==========================================
Created By maqwjz
Instagram : maqwjz
==========================================
00. Turn your Android into Hacking Machine.
------------------------------------------
1. Install Nmap 
2. Install Hydra
3. Install SQLMap
4. Install Metasploit
5. Install ngrok
6. Install Kali Nethunter
7. Install angryFuzzer
8. Install Red_Hawk
9. Install Weeman
10. Install IPGeoLocation
11. Install Cupp
12. Instagram Bruteforcer (instahack)
13. Twitter Bruteforcer   (TwitterSniper)
14. Install Ubuntu
15. Install Fedora
16. Install viSQL
17. Install Hash-Buster
18. Install D-TECT
19. Install routersploit
------------------------------------------
99. Exit
==========================================
""")

loop = True

while loop:
    menu()
    what = input("#: ")
    if what == "00":
        print("================================")
        print("This will install: nmap, hydra, sqlmap, metasploit, ngrok, angryFuzzer, red_hawk, weeman, IPGeoLocation, cupp, instahack, TwitterSniper, Hash-Buster, D-TECT, routersploit and viSQL with one click.")
        print("----------------")
        hm = input("[?] Do you want to continue? (y/n): ")
        print("================================")
        if hm == "y":
            print("========================================================")
            print("[+] Please put down your android and go to the toilet...")
            print("Because this will take a long time.")
            print("========================================================")
            os.system("pkg update -y")
            os.system("pkg install -y git python python2 wget nmap hydra")
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
            os.system("clear")
            print("========================================")
            print("[+] Everything successfully installed :)")
            print("[+] Happy Hacking <3")
            print("========================================")
        else:
            break
    elif what == "99":
        print("Exiting... Goodbye!")
        break
    else:
        print("[!] Option not implemented yet.")
        back = input("[?] Back to Menu? (y/n): ")
        if back.lower() != "y":
            break
