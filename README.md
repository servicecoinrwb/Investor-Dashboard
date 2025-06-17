# Service Coin Ecosystem

> The Service Coin Ecosystem is a decentralized finance (DeFi) platform designed to offer two distinct pathways for users to earn "real yield" from the platform's business revenue.

## 1. Overview

The ecosystem revolves around its native token, **`SRV`**, and provides opportunities for both staking the native token and depositing stablecoins (`USDC`) to receive a share of the profits.

The core philosophy is to reward two types of key participants:
1.  **SRV Token Stakers:** Those who invest in and secure the native token of the platform.
2.  **Liquidity Providers:** Those who provide stablecoin capital (`USDC`) for the platform's operations.

---

## 2. Tokenomics

The ecosystem utilizes three primary assets:

* **`SRV` (Service Token):** The core native token of the platform. Its primary utility is staking, which grants users the right to earn a portion of the platform's revenue.
* **`SREV` (Service Revenue Token):** A liquid staking derivative token. When a user stakes their `SRV`, they receive `SREV` as a receipt. This token represents their staked position and entitles them to the corresponding yield from the "Service Business Revenue" pool.
* **`USDC` (USD Coin):** The stablecoin used as the "real yield" asset. All rewards from both the staking and the real yield systems are paid out in `USDC`, providing users with a stable and reliable income stream.

---

## 3. The Two Pillars of the Ecosystem

The dApp is divided into two main sections, each offering a unique way to earn.

### Pillar I: SRV Staking & Service Business Revenue

This system is designed to reward users who hold and stake the native `SRV` token.

* **Objective:** To earn a stable yield (paid in `USDC`) by locking up the platform's native `SRV` token. The UI indicates this system targets a **5% APR**.
* **How it Works:**
    1.  A user acquires `SRV` tokens.
    2.  In the `SRV Staking` module, they `Approve` and then `Stake` their desired amount of `SRV`.
    3.  Upon staking, their `SRV` is locked in the contract, and they receive an equivalent amount of `SREV` tokens as a receipt.
    4.  Their staked position, now represented by their `SREV` balance, begins accumulating rewards.
* **Claiming Rewards:**
    * The `Service Business Revenue` module shows the health of the staking reward pool.
    * **`Pool Balance`:** The total `USDC` available to be paid out to all SRV stakers.
    * **`Your Pending Rewards`:** The specific amount of `USDC` the connected user is entitled to claim.
    * Users click `Claim Yield (Staking)` to transfer these `USDC` rewards to their wallet.

### Pillar II: The Real Yield System (Investor Vault)

This system is designed for users who want to earn yield by depositing stablecoins, thereby providing working capital to the platform.

* **Objective:** To deposit `USDC` and receive a proportional "cut of the platform's real-time earnings."
* **How it Works:**
    1.  A user holds `USDC`.
    2.  In the `Real Yield System` module, they `Approve` and then `Deposit` their desired amount of `USDC`.
    3.  **There is a 7-day lockup period** for all initial deposits, ensuring capital stability.
    4.  The user's deposit is pooled with that of other investors. In return, the user gets an internal "share" of the vault, which determines their percentage of the yield.
* **Yield Actions:**
    * **`Claim Yield`:** Withdraws the earned `USDC` rewards to the user's wallet.
    * **`Compound Yield`:** Reinvests the earned `USDC` rewards back into the user's principal deposit, increasing their share of the vault and allowing their future yield to grow exponentially (APY effect).
    * **`Withdraw All`:** After the lockup period, this allows the user to pull their entire principal and any unclaimed yield out of the vault.

---

## 4. System Statistics Explained

The dashboard provides key metrics to understand the health and state of the `Real Yield System`:

* **`Your Share`:** The current total value, in USD, of your deposited principal.
* **`Total Capital Deposited`:** The total value of `USDC` locked in the Investor Vault by all users (Total Value Locked, or TVL).
* **`Yield Vault Balance`:** The central treasury holding the platform's profits before they are distributed to the Investor Vault.
* **`Total Fees Processed`:** A running counter of all revenue the platform has ever generated.
* **`USDC earned in vault`:** Your personal, claimable `USDC` rewards from the Real Yield System.

```bash
git clone https://github.com/yourusername/investor-dashboard.git
cd investor-dashboard
open index.html
