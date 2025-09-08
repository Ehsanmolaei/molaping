#!/bin/bash

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

while true; do
  clear
  echo -e "${GREEN}"
  echo " __  __       _           ____  _             "
  echo "|  \/  | ___ | | __ _    |  _ \(_)_ __   __ _ "
  echo "| |\/| |/ _ \| |/ _\` |   | |_) | | '_ \ / _\` |"
  echo "| |  | | (_) | | (_| |   |  __/| | | | | (_| |"
  echo "|_|  |_|\___/|_|\__,_|   |_|   |_|_| |_|\__, |"
  echo "                                       |___/ "
  echo "=============================================="
  echo -e "${NC}"
  
  echo -e "${YELLOW}[1]${NC} Install & Run OpenManage Panel"
  echo -e "${YELLOW}[2]${NC} Install & Run Medusa Tunnel"
  echo -e "${YELLOW}[3]${NC} Install & Run DejTunnel"
  echo -e "${YELLOW}[4]${NC} Enable BBR"
  echo -e "${YELLOW}[5]${NC} Exit"
  
  echo "=============================================="
  read -p "👉 Choose an option: " choice

  case $choice in
    1)
      wget -q -O /root/vpn_manager.sh https://raw.githubusercontent.com/eylandoo/openvpn_webpanel_manager/main/vpn_manager.sh \
      && chmod +x /root/vpn_manager.sh && /root/vpn_manager.sh
      ;;
    2)
      curl -fsSL "https://github.com/Karrari-Dev/Medusa/releases/download/V1.0.0/medusa-linux-x86_64.tar.gz" \
      | tar -xz -C /usr/local/bin medusa && chmod +x /usr/local/bin/medusa
      ;;
    3)
      wget -q -O /root/DejTunnel.sh https://raw.githubusercontent.com/eylandoo/DejTunnel/main/DejTunnel.sh \
      && chmod +x /root/DejTunnel.sh && /root/DejTunnel.sh
      ;;
    4)
      wget -N --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh \
      && chmod +x bbr.sh && bash bbr.sh
      ;;
    5)
      break
      ;;
    *)
      echo "❌ Invalid option!"
      ;;
  esac

  echo ""
  read -p "Press Enter to continue..."
done
