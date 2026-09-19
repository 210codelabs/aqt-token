# Adaptiq Utility Token (AQT)

Public technical information and verifiable records for the Adaptiq Utility Token on Ethereum.

> Always verify the contract address before interacting with AQT.

## Canonical identifiers

| Field | Value |
| --- | --- |
| Network | Ethereum Mainnet |
| Chain ID | `1` |
| Name | Adaptiq Utility Token |
| Symbol | `AQT` |
| Decimals | `18` |
| Contract | [`0x4F57428adbd6F610C4485E7B69102fb462f9b287`](https://etherscan.io/token/0x4F57428adbd6F610C4485E7B69102fb462f9b287) |
| Maximum supply | `1,000,000,000 AQT` |
| Official page | [210codelabs.com/aqt-token](https://210codelabs.com/aqt-token) |
| Contact | [ernesto@210codelabs.com](mailto:ernesto@210codelabs.com) |

## Contract properties

- Fixed supply minted once during deployment. The contract has no additional mint function.
- Standard ERC-20 transfers and approvals.
- Token holders may burn their own tokens, or tokens for which they have an allowance.
- No buy, sell, or transfer tax logic.
- No blacklist, whitelist, arbitrary balance modification, or external-call mechanism.
- Non-upgradeable implementation; the token is not a proxy.
- Transfers can be paused or unpaused by the owner as an emergency control.

The verified deployment source is reproduced in [`contracts/AdaptiqUtilityToken.sol`](contracts/AdaptiqUtilityToken.sol), and its ABI is available in [`abi/AdaptiqUtilityToken.json`](abi/AdaptiqUtilityToken.json). The authoritative deployed bytecode and verified source remain the records published by Ethereum and Etherscan.

## Administration

The contract owner is the following Safe smart account:

[`0x09874CC4C1A6222FBB7BB45C1cf32A24cEe8f549`](https://app.safe.global/home?safe=eth:0x09874CC4C1A6222FBB7BB45C1cf32A24cEe8f549)

The Safe requires 2 of its 3 public onchain owners to authorize a transaction. Ownership was transferred to the Safe in [transaction `0x5bcc...66ddb`](https://etherscan.io/tx/0x5bccb26a6c9659ea04467f7db02921ca72eb517bafda13428c6b23f15cc66ddb).

Administrative capability is limited to:

- pausing all AQT transfers; and
- unpausing all AQT transfers.

The owner cannot mint additional AQT, impose transfer fees, blacklist wallets, confiscate balances, or upgrade the deployed token contract.

## Trading verification

A public mainnet test completed a buy, approval, and successful sale through the AQT/WETH liquidity pool:

- [Buy transaction](https://etherscan.io/tx/0x9da016206c3930569bd2cc05e73182a7510fcd1d214fc6b7fb4b1ac85e844a60)
- [Approval transaction](https://etherscan.io/tx/0x5c77d7c60b39eb554878af09218676f3ec32c993073c8bf718d16072c9f36e83)
- [Sale transaction](https://etherscan.io/tx/0x343057d75fe5f92b1b7ebb2c23e9ea720d51fbaedfc917f07db4b3dac8ee15c5)

The sale transferred `53,548.8953 AQT` into the pool and returned `0.00002510748677382 ETH` to the seller. This onchain result demonstrates that AQT was sellable at the time of the test. It does not guarantee future liquidity, price, routing, or availability.

## Liquidity

The identified PancakeSwap V2 AQT/WETH pair is:

[`0x4E21b685e4aD2efD7E6aFE51890D2499f6cea100`](https://etherscan.io/address/0x4E21b685e4aD2efD7E6aFE51890D2499f6cea100)

Liquidity is limited and price impact may be substantial. Review [RISK_DISCLOSURES.md](RISK_DISCLOSURES.md) before interacting with the pool.

## Repository contents

- [`contracts/`](contracts/) — verified token source
- [`abi/`](abi/) — contract ABI
- [`assets/`](assets/) — public token artwork
- [`metadata/`](metadata/) — machine-readable token metadata
- [`data/`](data/) — dated public onchain snapshots
- [`SECURITY.md`](SECURITY.md) — responsible disclosure contact
- [`RISK_DISCLOSURES.md`](RISK_DISCLOSURES.md) — administrative, concentration, and liquidity disclosures
- [`LIQUIDITY_AND_DISTRIBUTION_PLAN.md`](LIQUIDITY_AND_DISTRIBUTION_PLAN.md) — current liquidity, planned expansion, LP controls, and allocation policy

## Verification and safety

This repository never contains private keys, seed phrases, wallet backup files, signing credentials, or unpublished personal information. Do not trust any request for those materials claiming to represent AQT or 210 CodeLabs.

This repository provides technical and operational information. It is not an offer to sell securities or a promise of token value, liquidity, returns, or future utility.
