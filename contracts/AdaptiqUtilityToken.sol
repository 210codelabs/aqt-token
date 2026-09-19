// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {ERC20Pausable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title Adaptiq Utility Token (AQT)
/// @notice Fixed-supply utility token for the Adaptiq ecosystem.
/// @dev Sale, vesting, and treasury-management logic should remain separate.
contract AdaptiqUtilityToken is ERC20, ERC20Burnable, ERC20Pausable, Ownable {
    uint256 public constant MAX_SUPPLY = 1_000_000_000 ether;

    error ZeroTreasuryAddress();

    constructor(address initialTreasury, address initialOwner)
        ERC20("Adaptiq Utility Token", "AQT")
        Ownable(initialOwner)
    {
        if (initialTreasury == address(0)) revert ZeroTreasuryAddress();

        _mint(initialTreasury, MAX_SUPPLY);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function _update(address from, address to, uint256 value)
        internal
        override(ERC20, ERC20Pausable)
    {
        super._update(from, to, value);
    }
}
