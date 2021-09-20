// contracts/BIDCoin.sol
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC777/ERC777.sol";

contract BIDCoin is ERC777 {
    constructor(uint256 initialSupply, address[] memory defaultOperators)
        ERC777("BIDCoin", "BID", defaultOperators)
    {
        _mint(msg.sender, initialSupply, "", "");
    }

    function operatorBurn(address, uint256, bytes calldata, bytes calldata) public virtual override {
        revert();
    }

    function burn(uint256, bytes memory) public virtual override {
        revert();
    }
}