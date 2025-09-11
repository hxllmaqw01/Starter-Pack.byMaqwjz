pkg update -y && pkg upgrade -y
pkg install git python python-pip php curl wget nano openssh clang hydra nmap unzip -y
git clone https://github.com/sqlmapproject/sqlmap ~/sqlmap
git clone https://github.com/htr-tech/zphisher ~/zphisher
pkg install unstable-repo -y
pkg install metasploit -y
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip -O ngrok.zip
unzip ngrok.zip
chmod +x ngrok
rm ngrok.zip
