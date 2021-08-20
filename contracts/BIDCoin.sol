// contracts/BIDCoin.sol
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC777/ERC777.sol";

contract BIDCoin is ERC777 {
    address[] private defaultOperator;
    constructor() ERC777("BIDCoin", "BID", defaultOperator) public {
        _mint(msg.sender, msg.sender, 1000000*10**18, "", "");
    }
}