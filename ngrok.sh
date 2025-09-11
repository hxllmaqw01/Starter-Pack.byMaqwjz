#!/data/data/com.termux/files/usr/bin/bash
echo "📥 Installing Ngrok..."
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip -O ngrok.zip
unzip ngrok.zip
chmod +x ngrok
rm ngrok.zip
echo "✅ Ngrok installed!"
