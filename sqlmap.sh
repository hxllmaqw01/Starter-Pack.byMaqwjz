#!/data/data/com.termux/files/usr/bin/bash
echo "📥 Installing Sqlmap..."
if [ -d "$HOME/sqlmap" ]; then
    echo "⚠️ Sqlmap folder already exists. Skipping..."
else
    git clone https://github.com/sqlmapproject/sqlmap ~/sqlmap
    echo "✅ Sqlmap installed!"
fi
