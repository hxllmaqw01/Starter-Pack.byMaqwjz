#!/data/data/com.termux/files/usr/bin/bash
echo "📥 Installing Zphisher..."
if [ -d "$HOME/zphisher" ]; then
    echo "⚠️ Zphisher folder already exists. Skipping..."
else
    git clone https://github.com/htr-tech/zphisher ~/zphisher
    echo "✅ Zphisher installed!"
fi
