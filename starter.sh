#!/data/data/com.termux/files/usr/bin/bash

echo "🔧 Maqwjz Starter Pack Başlayır..."
echo "--------------------------------"

# 1️⃣ Sistemi yenilə
pkg update -y && pkg upgrade -y

# 2️⃣ Əsas paketlər
echo "📦 Əsas paketlər yüklənir..."
pkg install git python python-pip php curl wget nano openssh clang hydra nmap unzip -y

# 3️⃣ Hacking Tool-ları klonlama
echo "📥 Sqlmap klonlanır..."
[ ! -d "$HOME/sqlmap" ] && git clone https://github.com/sqlmapproject/sqlmap ~/sqlmap

echo "📥 Zphisher klonlanır..."
[ ! -d "$HOME/zphisher" ] && git clone https://github.com/htr-tech/zphisher ~/zphisher

# 4️⃣ Metasploit
echo "🛠 Metasploit quraşdırılır..."
pkg install unstable-repo -y
pkg install metasploit -y

# 5️⃣ Ngrok
echo "🌐 Ngrok yüklənir..."
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip -O ngrok.zip
unzip ngrok.zip
chmod +x ngrok
rm ngrok.zip

echo "✅ Starter Pack uğurla quraşdırıldı!"
