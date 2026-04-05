# ⚡ TheTechSavage Premium VPS Manager (Final Edition)

![Version](https://img.shields.io/badge/Version-3.5_Premium-cyan?style=for-the-badge) 
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge) 
![Platform](https://img.shields.io/badge/Platform-Ubuntu_20%2B-orange?style=for-the-badge)
![Security](https://img.shields.io/badge/Security-Ghost_Architecture-red?style=for-the-badge)

**The Ultimate All-in-One VPN Autoscript.** Built for high-performance tunneling, low-latency gaming, and enterprise-grade server stability. Features a futuristic dashboard, self-healing protocols, Telegram cloud backups, and military-grade script protection.

---

## 🚀 Key Features

### 💎 Core Tunneling Protocols
* ✅ **Xray Core (XTLS-Reality & HTTPUpgrade):** VMess, VLESS, and Trojan-WS with Multi-Path Support, Nginx Multiplexing, and dedicated HTTPUpgrade payloads for aggressive CloudFront CDN bypassing.
* ✅ **SSH, Dropbear & Stunnel4:** Secure shell access with standard WebSocket (Port 80), SSL/TLS (Port 443), and a dedicated "Blind 101" Proxy (Port 8880) for aggressive ISP firewall bypassing (HTTP Injector / Custom Payloads).
* ✅ **OpenVPN & OHP:** Dual-stack OpenVPN (TCP/UDP) paired with Open HTTP Proxy (OHP) for custom header routing.
* ✅ **SlowDNS (DNSTT) & Key Manager:** Advanced DNS tunneling dynamically built via Go, optimized for highly restricted networks. Includes a built-in Key Manager to swap cryptographic keys on the fly.
* ✅ **Dante SOCKS5 Proxy:** Dedicated SOCKS5 proxy (Port 1080) for secure, app-specific tunneling.
* ✅ **BadVPN UDPGW:** Accelerated UDP gateway for seamless online gaming and voice/video calls.

### 🛡️ Smart Automation & Security
* 🔐 **Premium License Auth:** Secure, cloud-based server validation system to prevent unauthorized script execution.
* ☁️ **Telegram Cloud Backup & Restore:** Automated user data and configuration backups sent to your Telegram Bot, with a seamless cloud restoration tool to recover your server instantly via link.
* 📡 **Over-The-Air (OTA) Updates:** Pull new features, security patches, and menu updates directly from the master vault to live servers without reinstalling the OS.
* 🔄 **Auto-Expiry Engine:** Automatically hunts and deletes expired VPN accounts at midnight.
* 🚫 **Anti-Multilogin (Autokill & 3-Strike Sniper):** Scans and disconnects users exceeding their maximum allowed device limit. Actively hunts live Dropbear/SSH PIDs to sever connections and permanently locks accounts after 3 violations.
* 🛡️ **DDoS-Deflate Engine:** Integrated active firewall bouncer that monitors concurrent connections and automatically IP-bans malicious network floods.
* 🩺 **System Maintenance & Self-Healing:** Built to survive Ubuntu 24.04 strict process-orphaning, featuring an automated RAM cleaner, scheduled reboots, server health diagnostics, and an integrated Ookla Speedtest.

---

## 📥 Installation

Run this command on a fresh **Ubuntu 20.04 / 22.04 / 24.04 LTS** or **Debian 10 / 11 / 12** VPS.

```bash
apt update && apt install -y wget && wget -q https://raw.githubusercontent.com/TheTechSavant/TheTechSavageVpnManager/main/install/setup.sh && chmod +x setup.sh && ./setup.sh
```

### 🛠️ Setup Steps

1.  **Register your IP:**
    * **Free 24h Trial:** Start our [All-in-One Bot](https://t.me/TheTechSavageFile2LinkBot) and use the `/trialip` command to whitelist your VPS instantly.
    * **Full Premium:** Contact [@TheTechSavageSupport](https://t.me/thetechsavagesupport) to purchase a 30-day or Lifetime license.
2.  **Run the Installer:** Paste the installation command above into your terminal.
3.  **Authentication:** The script will securely verify your IP against the cloud database before proceeding.
4.  **Input Domains:** Enter your Pointed Domain (e.g., `vpn.mysite.com`) and NameServer (e.g., `ns.vpn.mysite.com`) when prompted.
5.  **Sit Back & Relax:** Wait for the system to compile dependencies, fetch binaries, and generate SSL certificates.
6.  **Completion:** The server will reboot automatically in 10 seconds to finalize your Ghost Architecture.

### 📸 Installation Workflow Preview

| License Validation Failsafe | Secure Vault Connection |
| :---: | :---: |
| ![License Failed](https://github.com/user-attachments/assets/4bd12ca9-aca6-4342-84fc-803fdbc3350e) | ![License Valid](https://github.com/user-attachments/assets/0f43af2a-0522-40ee-9cd1-842aebd2e8c3) |
| **Domain Configuration** | **Installation Complete** |
| ![Domain Config](https://github.com/user-attachments/assets/ad4de08e-5338-47e9-887c-697a4406b340) | ![Installation Complete](https://github.com/user-attachments/assets/272ddccb-3d65-442a-ac19-007188e7b990) |

---

## 🎮 The Dashboard

Type `menu` to access the futuristic control panel.

```bash
menu
```

<p align="center">
  <img src="https://github.com/user-attachments/assets/e37ea684-39fd-4bc7-b421-6568a530ed3a" alt="Main Menu Preview" width="700">
</p>

### 🖥️ Menu Overview
| Menu Option | Function |
| :--- | :--- |
| **[01] SSH Manager** | Create, Renew, Auto-kill, Check Multi-Login, and access the **3-Strike Lock Manager**. |
| **[02] VMess Manager** | Manage VMess WS & HTTPUpgrade accounts + trial generation. |
| **[03] VLESS Manager** | Manage VLESS XTLS & HTTPUpgrade accounts + trial generation. |
| **[04] Trojan Manager** | Manage Trojan-WS accounts & manual expired user cleanup. |
| **[05] Settings** | OTA Updates, SlowDNS Key Manager, Auto-Reboot config, Reboot Logs, Speedtest. |
| **[06] Backup/Restore** | Manage Telegram Bot cloud backups (Event-Driven/Cron) and system restoration. |
| **[07] Domain & SSL** | Change VPS Host, update NameServers, and force-renew ACME Standalone SSL. |
| **[08] Check Running** | Live monitor of core services (Nginx, Xray, Stunnel, Dropbear, Python Proxy). |

---

## 🔌 Service Ports

| Service | Protocol | Port |
| :--- | :--- | :--- |
| **OpenSSH** | TCP | 22 |
| **Dropbear** | TCP | 109, 143 |
| **Stunnel4 (SSL/TLS)** | TCP | 447, 777 |
| **SSH-WS (HTTP)** | TCP | 80 |
| **Custom SSH-WS (ISP Bypass)** | TCP | 8880 |
| **SSH-SSL-WS** | TCP | 443 |
| **Xray (VMess, VLESS, Trojan)**| TCP/TLS | 443, 80 |
| **OpenVPN TCP** | TCP | 1194 |
| **OpenVPN UDP** | UDP | 2200 |
| **BadVPN UDPGW** | UDP | 7100-7300 |
| **SOCKS5 Proxy (Dante)** | TCP | 1080 |
| **SlowDNS (DNSTT)** | UDP | 53, 5300 |
| **OHP (Open HTTP Proxy)** | TCP | 2095 |
| **Nginx Multiplexer** | HTTP | 81 |
| **OpenVPN Config Download** | HTTP | 85 |

---

## ⚠️ Credits & Disclaimer

**Developed & Maintained by:** [TheTechSavage](https://t.me/thetechsavage)

> *This project is for educational purposes and network management only. The developer is not responsible for misuse.*

---

## 🆘 Need Help?
If you encounter any issues with the installation or need to check your license status:
* **License Bot:** [@TheTechSavageFile2LinkBot](https://t.me/TheTechSavageFile2LinkBot)
* **Technical Support:** [@TheTechSavageSupport](https://t.me/thetechsavagesupport)
* **Community:** [@TheTechSavageTelegram](https://t.me/TheTechSavageTelegram)