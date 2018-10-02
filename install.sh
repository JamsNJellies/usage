#!/bin/bash
# Usage install script - JamsNJellies

echo "[INFO] Usage install script by JamsNJellies"
echo "[INFO] Beggining install"
echo "[INFO] Getting thyme binary"
if [[ -f thyme-linux-386 ]]; then
	rm thyme-linux-386
fi

wget https://github.com/sourcegraph/thyme/releases/download/0.2.3/thyme-linux-386 &> /dev/null

echo "[INFO] Moving files to required locations"
sudo cp usage /bin/
sudo cp thyme-linux-386 /bin/thyme
sudo chmod +x /bin/thyme
echo "[INFO] Installing desktop files"
sudo cp usage.desktop /usr/share/applications/

echo "Thyme dependencies - REQUIRED!"
echo ""
thyme dep
