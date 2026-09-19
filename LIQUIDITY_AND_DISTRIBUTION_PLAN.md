# AQT Liquidity and Distribution Plan

Published: 2026-09-19

This document describes the current AQT liquidity position and the project's intended controls for future liquidity and token distributions. Items described as planned are not yet completed. Completed actions will be linked to Ethereum transactions.

## Objectives

The liquidity plan is intended to:

1. maintain a verifiable market where AQT can be bought and sold;
2. increase liquidity gradually without creating misleading volume;
3. place treasury and liquidity administration behind multisignature control; and
4. publish material changes before presenting them as completed.

## Current liquidity

The identified market is the PancakeSwap V2 AQT/WETH pair:

[`0x4E21b685e4aD2efD7E6aFE51890D2499f6cea100`](https://etherscan.io/address/0x4E21b685e4aD2efD7E6aFE51890D2499f6cea100)

At the 2026-09-19 snapshot, the pool held approximately:

- `5,776,577.217340973384136580 AQT`
- `0.002690083232780506 WETH`

This is limited liquidity and can produce substantial price impact. The project does not represent the current LP position as locked.

Approximately 99.991159% of the pool's LP tokens were held by the operational distributor at the snapshot date. The project intends to move administrative custody of the LP position away from single-wallet control and into the 2-of-3 Safe or a publicly verifiable lock arrangement.

## Planned expansion

The first liquidity expansion target is up to `0.04 ETH`, paired with the corresponding amount of AQT required by the pool at execution time. This is an initial target rather than a guarantee or deadline. The project will assess the pool ratio and price impact before execution and will publish the resulting transaction hashes.

Additional liquidity, if provided, will be added in disclosed tranches based on operational needs and observed usage. The project will not manufacture trading activity or represent controlled test transactions as independent market demand.

## LP custody and locking

The intended sequence is:

1. move LP administration from the operational distributor to the AQT 2-of-3 Safe;
2. complete the planned initial liquidity expansion;
3. place at least 90% of the resulting LP position into a publicly verifiable timelock or established liquidity-locking contract for a target period of at least 12 months; and
4. publish the lock address, amount, unlock date, and transaction hash in this repository.

Up to 10% of the LP position may remain under Safe control for technical migration, pool maintenance, or emergency response. Any retained amount and any use of it will be publicly disclosed. Until a lock transaction is published, liquidity should be treated as unlocked and removable by the LP holder.

## Supply and current custody

AQT has a fixed maximum and total supply of `1,000,000,000 AQT`. The deployed contract has no function that can mint additional tokens.

The 2026-09-19 holder snapshot, updated after the recovery transfer, showed:

| Address | Status | Balance | Share |
| --- | --- | ---: | ---: |
| [`0x09874...8f549`](https://etherscan.io/token/0x4F57428adbd6F610C4485E7B69102fb462f9b287?a=0x09874CC4C1A6222FBB7BB45C1cf32A24cEe8f549) | 2-of-3 Safe treasury | 798,656,672 AQT | 79.8657% |
| [`0x1456...034e`](https://etherscan.io/token/0x4F57428adbd6F610C4485E7B69102fb462f9b287?a=0x1456bf52d3f1599dfD12e8c4DEc62aB44D8C034e) | Recovered; balance transferred to Safe | 0 AQT | 0.0000% |
| [`0xE236...b646`](https://etherscan.io/token/0x4F57428adbd6F610C4485E7B69102fb462f9b287?a=0xE236530907E5981Dc7a39Fdf706c7cE07Cb6b646) | Operational distributor | 170,803,545.828494 AQT | 17.0804% |

The previously inaccessible `0x1456...034e` balance was recovered and transferred to the Safe in [transaction `0x32ce...87c84`](https://etherscan.io/tx/0x32ceccab83cf49b7de0615b680965b9626e89d053d82265cf6ff7da50bf87c84). The transfer did not burn tokens; total supply remains fixed.

## Long-term allocation controls

A final category-by-category allocation schedule has not yet been approved. Until it is published:

- unallocated project-controlled tokens will remain primarily in the 2-of-3 Safe treasury;
- the operational distributor will retain only amounts reasonably needed for disclosed distributions, liquidity operations, and testing;
- material treasury movements will require Safe authorization or will be visible as transfers from a disclosed operational address;
- team, advisor, partner, or contributor grants that include a time-based commitment are intended to use public vesting or timelock contracts rather than undisclosed manual custody; and
- future allocation schedules, vesting contracts, and material amendments will be versioned in this repository with onchain references.

No allocation grants equity, profit participation, redemption rights, or a guaranteed return unless separate legally reviewed documentation expressly establishes such rights.

## Reporting completed actions

The following evidence will be added as actions occur:

- liquidity-addition transaction hashes;
- LP transfer and lock transaction hashes;
- lock contract and unlock date;
- vesting contract addresses and schedules; and
- updated dated holder and reserve snapshots.

Questions may be sent to [ernesto@210codelabs.com](mailto:ernesto@210codelabs.com).
