# AQT Risk Disclosures

Updated: 2026-09-19

These disclosures describe material facts visible on Ethereum or supplied by the project. Token balances, pool reserves, and market conditions change over time; follow the linked explorer records for current values.

## Administrative control

AQT implements OpenZeppelin `ERC20Pausable`. The contract owner can pause or unpause all token transfers.

The owner is a Safe smart account at [`0x09874...8f549`](https://etherscan.io/address/0x09874CC4C1A6222FBB7BB45C1cf32A24cEe8f549), configured with a 2-of-3 threshold. A pause would prevent ordinary transfers, trades, minting, and burning until the Safe executes an unpause transaction.

The owner cannot create additional AQT, change balances, set transfer taxes, blacklist individual accounts, or replace the token implementation.

## Holder concentration

The following was observed on Etherscan on 2026-09-19:

| Address | Public role or status | Balance | Share of fixed supply |
| --- | --- | ---: | ---: |
| [`0x09874...8f549`](https://etherscan.io/token/0x4F57428adbd6F610C4485E7B69102fb462f9b287?a=0x09874CC4C1A6222FBB7BB45C1cf32A24cEe8f549) | 2-of-3 Safe treasury and token owner | 798,656,672 AQT | 79.8657% |
| [`0x1456...034e`](https://etherscan.io/token/0x4F57428adbd6F610C4485E7B69102fb462f9b287?a=0x1456bf52d3f1599dfD12e8c4DEc62aB44D8C034e) | Recovered; balance transferred to Safe | 0 AQT | 0.0000% |
| [`0xE236...b646`](https://etherscan.io/token/0x4F57428adbd6F610C4485E7B69102fb462f9b287?a=0xE236530907E5981Dc7a39Fdf706c7cE07Cb6b646) | Operational distributor | 170,803,545.828494 AQT | 17.0804% |

The top three addresses therefore held approximately 96.9461% of the fixed supply at the snapshot date. This is significant concentration.

The previously inaccessible `0x1456...034e` balance was recovered and transferred to the Safe in [transaction `0x32ce...87c84`](https://etherscan.io/tx/0x32ceccab83cf49b7de0615b680965b9626e89d053d82265cf6ff7da50bf87c84). The transfer did not burn tokens; total supply remains fixed.

## Liquidity

The identified PancakeSwap V2 AQT/WETH pair is [`0x4E21...a100`](https://etherscan.io/address/0x4E21b685e4aD2efD7E6aFE51890D2499f6cea100).

At the 2026-09-19 snapshot, onchain reserves were approximately:

- `5,776,577.217340973384136580 AQT`
- `0.002690083232780506 WETH`

Liquidity is very low. Even small trades may experience substantial price impact, poor execution, or no usable route.

At the same snapshot, the operational distributor held approximately 99.991159% of the pair's LP tokens. The LP position was not represented as locked. The LP holder can remove the liquidity it controls.

## Trading tests and third-party scanners

The successful [sale transaction](https://etherscan.io/tx/0x343057d75fe5f92b1b7ebb2c23e9ea720d51fbaedfc917f07db4b3dac8ee15c5) shows that the seller received ETH for AQT on 2026-09-19. Honeypot.is also reported zero buy, sell, and transfer taxes and classified the token as low risk when queried on that date.

Automated scanners may be stale, may disagree with each other, and may classify low liquidity, failed simulations, holder concentration, or administrative controls as elevated risk. A past successful transaction does not guarantee that a future transaction will execute.

## Market and legal considerations

AQT has no guaranteed market price, liquidity, redemption value, or return. Anyone considering a transaction should inspect the current contract state, pool reserves, approvals, route, price impact, and applicable law.

Any future fundraising, revenue sharing, profit participation, equity, or investment arrangement involving AQT requires separate legal analysis and documentation. This repository does not create such rights.
