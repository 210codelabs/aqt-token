#!/usr/bin/env bash
set -euo pipefail

today="${1:-$(date -u +%F)}"
out="announcements/daily/${today}.md"

mkdir -p "$(dirname "$out")"
if [[ -e "$out" ]]; then
  exit 0
fi

cat > "$out" <<EOT
# AQT daily transparency update — ${today}

This daily bulletin records the currently published AQT facts. It is generated from the project repository and does not claim price performance, trading volume, new partnerships, exchange listings, or financial returns.

- **Contract:** [AQT on Ethereum](https://etherscan.io/token/0x4F57428adbd6F610C4485E7B69102fb462f9b287)
- **Owner:** [2-of-3 Safe](https://app.safe.global/home?safe=eth:0x09874CC4C1A6222FBB7BB45C1cf32A24cEe8f549)
- **Supply:** 1,000,000,000 AQT fixed supply
- **Custody snapshot:** [onchain snapshot](../../data/onchain-snapshot-2026-09-19.json)
- **Latest treasury recovery:** [transaction](https://etherscan.io/tx/0x32ceccab83cf49b7de0615b680965b9626e89d053d82265cf6ff7da50bf87c84)
- **Liquidity status:** limited; treat LP as unlocked until a lock transaction is published. See the [liquidity plan](../../LIQUIDITY_AND_DISTRIBUTION_PLAN.md).

This is a transparency record, not investment advice. Verify all addresses and transaction details independently before interacting with AQT.
EOT
