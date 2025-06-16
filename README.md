# 🟠 Service Coin Investor Dashboard

Welcome to the official **Service Coin Investor Dashboard** — a simple, secure frontend for viewing your tokenized holdings, yield receipts, and redemption actions.

## 🚀 Overview

This dApp enables investors to:

- ✅ Connect their wallet (MetaMask or WalletConnect)
- 💰 View their **SREV** balance (auto-yielding receipt)
- 🏠 Track **LeaseToken_2025** holdings (real-world yield)
- 🧾 Claim accumulated **USDC rewards**
- 📈 Stake or Unstake SRV to/from the vault
- 🔓 Redeem or Early Redeem lease tokens
- 🔁 Auto-detect Arbitrum network and guide user to switch

Built using:
- [ethers.js](https://docs.ethers.org/)
- [Tailwind CSS](https://tailwindcss.com/)
- [Arbitrum One](https://arbitrum.io/)

---

## ⚙️ Live Contracts

| Contract                     | Address                                                                 |
|-----------------------------|-------------------------------------------------------------------------|
| SREV Token (receipt)        | `0x2f745Da2FA453ee76c756fADcc081f59284B2a40`                            |
| LeaseToken_2025 (RWA bond)  | `0xd0dc6eeE2dD77d7A4C09108993d0c7ad6a0b60E3`                            |
| Reward Distributor          | `0x71f618EFb0422687e5B2ad9cD973aDACb645D9DE`                            |
| SREV Staking Vault          | `0x691e29E98ECDc5ae948355F30102cD4D637eddB7`                            |

---

## 🧑‍💻 Usage

### 🖥️ Run locally

```bash
git clone https://github.com/yourusername/investor-dashboard.git
cd investor-dashboard
open index.html
