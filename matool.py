import os
import sys
import time

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
========================================
{RESET}""")

def spinner(duration=3):
    spinstr = '|/-\\'
    end_time = time.time() + duration
    while time.time() < end_time:
        for ch in spinstr:
            sys.stdout.write(f'\r{ch} Loading...')
            sys.stdout.flush()
            time.sleep(0.1)
    sys.stdout.write('\r[✓] Done!          \n')

def menu():
    banner()
    print(""" 
==========================================
00. Install All Essential Tools
01. Install Nmap
02. Install Hydra
03. Install SQLMap
04. Install Metasploit
05. Install ngrok
06. Exit
==========================================
""")

loop = True
while loop:
    menu()
    choice = input("#: ")
    if choice == "00":
        print("[*] Installing all tools...")
        spinner(5)  # 5 saniyəlik animasiya
        os.system("pkg update -y && pkg install -y git python python2 nmap hydra wget")
        os.system("cd ~ && git clone https://github.com/sqlmapproject/sqlmap.git")
        os.system("cd ~ && git clone https://github.com/htr-tech/zphisher.git")
        os.system("cd ~ && git clone https://github.com/themastersunil/ngrok.git")
        os.system("clear")
        print("[+] All tools installed successfully!")
    elif choice == "01":
        spinner(2)
        os.system("pkg install -y nmap")
        print("[+] Nmap installed!")
    elif choice == "02":
        spinner(2)
        os.system("pkg install -y hydra")
        print("[+] Hydra installed!")
    elif choice == "03":
        spinner(2)
        os.system("cd ~ && git clone https://github.com/sqlmapproject/sqlmap.git")
        print("[+] SQLMap installed!")
    elif choice == "04":
        spinner(2)
        os.system("cd ~ && wget https://Auxilus.github.io/metasploit.sh && bash metasploit.sh")
        print("[+] Metasploit installed!")
    elif choice == "05":
        spinner(2)
        os.system("cd ~ && git clone https://github.com/themastersunil/ngrok.git")
        print("[+] ngrok installed!")
    elif choice == "06":
        print("Exiting...")
        break
    else:
        print("[!] Invalid option, try again.")
