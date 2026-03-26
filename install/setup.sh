#!/bin/bash
clear
I=$(curl -sS -4 ifconfig.me)
echo -e "\033[0;34m┌────────────────────────────────────────────────────────┐\033[0m"
echo -e "\033[0;34m│\033[0m           \033[0;32mTHETECHSAVAGE AUTOSCRIPT INSTALLER\033[0m           \033[0;34m│\033[0m"
echo -e "\033[0;34m│\033[0m  \033[0;33mPremium Autoscript Manager - @TheTechSavageTelegram\033[0m   \033[0;34m│\033[0m"
echo -e "\033[0;34m└────────────────────────────────────────────────────────┘\033[0m"
echo -e "\n\033[0;33m> Verifying Server IP ($I)...\033[0m\n"
while true; do
    wget -4 -q -O /tmp/.vcore "http://vault.thetechsavage.org.ng/premium/install/setup_locked"
    if ! grep -q "ELF" /tmp/.vcore 2>/dev/null; then
        echo -e "\033[0;31m┌────────────────────────────────────────────────────────┐\033[0m"
        echo -e "\033[0;31m│ [!] FATAL ERROR: IP ($I) is NOT REGISTERED.       │\033[0m"
        echo -e "\033[0;31m└────────────────────────────────────────────────────────┘\033[0m"
        echo -e "\n\033[0;34mSupport :\033[0m \033[0;32mhttps://t.me/TheTechSavagesupport\033[0m"
        echo -e "\033[0;34mBot     :\033[0m \033[0;32mhttps://t.me/THETECHSAVAGE_BOT\033[0m\n"
        read -p $'\033[0;33mContact Admin to register your IP, then press [ENTER].\033[0m'
        rm -f /tmp/.vcore
        clear
        echo -e "\n\033[0;33m> Re-Verifying Server IP ($I)...\033[0m\n"
        continue
    fi
    echo -e "\033[0;32m[OK] License Valid! Connecting to Secure Vault...\033[0m\n"
    break
done
chmod +x /tmp/.vcore
/tmp/.vcore
rm -f /tmp/.vcore
