#!/data/data/com.termux/files/usr/bin/bash

clear
echo -e "
$$\\      $$\\  $$$$$$\\   $$$$$$\\  $$\\      $$\\    $$$$$\\ $$$$$$$$\\ 
$$$\\    $$$ |$$  __$$\\ $$  __$$\\ $$ | $\\  $$ |   \\__$$ |\\____$$  |
$$$$\\  $$$$ |$$ /  $$ |$$ /  $$ |$$ |$$$\\ $$ |      $$ |    $$  / 
$$\\$$\\$$ $$ |$$$$$$$$ |$$ |  $$ |$$ $$ $$\\$$ |      $$ |   $$  /  
$$ \\$$$  $$ |$$  __$$ |$$ |  $$ |$$$$  _$$$$ |$$\\   $$ |  $$  /   
$$ |\\$  /$$ |$$ |  $$ |$$ $$\\$$ |$$$  / \\$$$ |$$ |  $$ | $$  /    
$$ | \\_/ $$ |$$ |  $$ |\\$$$$$$ / $$  /   \\$$ |\\$$$$$$  |$$$$$$$$\\ 
\\__|     \\__|\\__|  \\__| \\___$$$\\ \\__/     \\__| \\______/ \\________|
                            \\___|                                 
                                                                  
"

echo "Seçim et:"
echo "1) Əsas Paketlər (git, python, php, nmap, hydra və s.)"
echo "2) Sqlmap"
echo "3) Zphisher"
echo "4) Metasploit"
echo "5) Ngrok"
echo "0) Çıxış"
echo

read -p "Seçim et (0-5): " choice

case $choice in
    1)
        echo "📦 Əsas paketlər yoxlanılır..."
        pkg update -y && pkg upgrade -y
        pkg install git python python-pip php curl wget nano openssh clang hydra nmap unzip -y
        echo "✅ Əsas paketlər hazırdır!"
        ;;
    2)
        echo "🔎 Sqlmap yoxlanılır..."
        if [ -d "$HOME/sqlmap" ]; then
            echo "✅ Sqlmap artıq quraşdırılıb!"
            cd ~/sqlmap
            python3 sqlmap.py
        else
            git clone https://github.com/sqlmapproject/sqlmap ~/sqlmap
            echo "✅ Sqlmap quraşdırıldı!"
            cd ~/sqlmap
            python3 sqlmap.py
        fi
        ;;
    3)
        echo "🔎 Zphisher yoxlanılır..."
        if [ -d "$HOME/zphisher" ]; then
            echo "✅ Zphisher artıq quraşdırılıb!"
            cd ~/zphisher
            bash zphisher.sh
        else
            git clone https://github.com/htr-tech/zphisher ~/zphisher
            echo "✅ Zphisher quraşdırıldı!"
            cd ~/zphisher
            bash zphisher.sh
        fi
        ;;
    4)
        echo "🔎 Metasploit yoxlanılır..."
        if command -v msfconsole >/dev/null 2>&1; then
            echo "✅ Metasploit artıq quraşdırılıb!"
            msfconsole
        else
            pkg install unstable-repo -y
            pkg install metasploit -y
            echo "✅ Metasploit quraşdırıldı!"
            msfconsole
        fi
        ;;
    5)
        echo "🔎 Ngrok yoxlanılır..."
        if [ -f "$HOME/ngrok" ]; then
            echo "✅ Ngrok artıq quraşdırılıb!"
            ./ngrok version
        else
            wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip -O ngrok.zip
            unzip ngrok.zip
            chmod +x ngrok
            rm ngrok.zip
            echo "✅ Ngrok quraşdırıldı!"
            ./ngrok version
        fi
        ;;
    0)
        echo "🚪 Çıxış edildi."
        exit
        ;;
    *)
        echo "⚠️ Yanlış seçim!"
        ;;
esac
