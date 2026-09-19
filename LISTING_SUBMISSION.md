# AQT listing submission record

This file records the official submission paths and the information to use. Being present in this repository does not mean that a third-party service has approved or listed AQT.

## Canonical listing data

| Field | Value |
| --- | --- |
| Name | Adaptiq Utility Token |
| Symbol | AQT |
| Network | Ethereum Mainnet (chain ID 1) |
| Contract | `0x4F57428adbd6F610C4485E7B69102fb462f9b287` |
| Decimals | 18 |
| Website | https://210codelabs.com/aqt-token |
| Logo | https://raw.githubusercontent.com/210codelabs/aqt-token/main/assets/aqt-token-64.png |
| Source and ABI | https://github.com/210codelabs/aqt-token |
| Owner | 2-of-3 Safe `0x09874CC4C1A6222FBB7BB45C1cf32A24cEe8f549` |
| Pair | PancakeSwap V2 AQT/WETH `0x4E21b685e4aD2efD7E6aFE51890D2499f6cea100` |

## Submission status

- **Uniswap default token list:** issue submitted at [Uniswap/default-token-list#2585](https://github.com/Uniswap/default-token-list/issues/2585). Inclusion is not guaranteed and remains subject to review.
- **PancakeSwap token list:** review request submitted at [pancakeswap/token-list#756](https://github.com/pancakeswap/token-list/issues/756). This is a request for review, not an assertion that AQT has been accepted.
- **CoinGecko:** submit through the official Request & Listing form. CoinGecko requires an account, a completed form, an image attachment, and captcha; it also requires active trading on a supported exchange. No approval is implied here.
- **CoinMarketCap:** submit through the official online request form. CMC evaluates market data, liquidity, community interest, project activity, and documentation. Do not use listing intermediaries or send duplicate requests.
- **Trust Wallet:** not submitted yet. Its current published criteria include CoinMarketCap price tracking, a reputable full security audit, and guideline thresholds of 10,000 holders and 15,000 non-airdrop transactions. AQT does not currently document those thresholds, so opening a PR now would likely be rejected.
- **PancakeSwap:** the token can be traded by pasting the contract address. PancakeSwap's own token-list documentation says not to submit unsolicited pull requests for its default list. This repository's `tokenlist.json` is a public external token list and is not an official PancakeSwap approval.
- **DEX trackers:** DEX Screener, GeckoTerminal, and DEXTools generally discover a pair from onchain activity. Correct metadata and sufficient liquidity improve the chance of complete indexing but do not guarantee it.

## Evidence links

- [Verified contract](https://etherscan.io/token/0x4F57428adbd6F610C4485E7B69102fb462f9b287)
- [Safe ownership transfer](https://etherscan.io/tx/0x5bccb26a6c9659ea04467f7db02921ca72eb517bafda13428c6b23f15cc66ddb)
- [Recovered treasury transfer](https://etherscan.io/tx/0x32ceccab83cf49b7de0615b680965b9626e89d053d82265cf6ff7da50bf87c84)
- [Successful sale test](https://etherscan.io/tx/0x343057d75fe5f92b1b7ebb2c23e9ea720d51fbaedfc917f07db4b3dac8ee15c5)
- [Liquidity and distribution plan](./LIQUIDITY_AND_DISTRIBUTION_PLAN.md)
- [Risk disclosures](./RISK_DISCLOSURES.md)

Never pay an unofficial party that guarantees a listing, and never provide a seed phrase or private key to a listing service.
