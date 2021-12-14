// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

// Author: Khashkhuu 'Xass1on' Gankhuyag

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/TokenTimelock.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract BIDCoin is ERC20, Ownable {
    using SafeMath for uint256;
    TokenTimelock public timelockProjectOwnerReserve;

    uint256 constant _totalSupply = 1.6 * 10**11;

    uint256 constant _tokenToOffer = 4 * 10**10;
    uint256 constant _tokenFintech = 3 * 10**9;

    uint256 constant _tokenPromotion = 1.5 * 10**9;
    uint256 constant _tokenManagementReserve = 14731649102;

    uint256 constant _tokenCooperation = 1 * 10**9;
    uint256 constant _tokenListing = 4 * 10**10;

    uint256 constant _tokenCivilResponsibility = 5 * 10**8;
    uint256 constant _tokenProjectOwnerReserve = 1.5 * 10**10;

    uint256 constant _tokenStrategicReserve = 1.5 * 10**10;
    uint256 constant _tokenBurn = 29268350898;

    string constant _tokenName = "BIDCoin";
    string constant _tokenSymbol = "BID";

    address constant _tokenOfferAddress =
        0xa4627D4AEeEf81e1cb7EB63d0E6Fd2f4f7682d93;
    address constant _tokenFintechAddress =
        0x02e0bDa9c03C7769D5d7d7f5034EC192b3077121;

    address constant _tokenPromotionAddress =
        0xf797D74f1313E014660087dDaBB3E12D25Af4921;
    address constant _tokenManagementReserveAddress =
        0x47d80e39875c23AFb8990AecD280bd14de9901a5;

    address constant _tokenCooperationAddress =
        0xf5774463ACfaD5539273986f070FeD7e5406DF4C;
    address constant _tokenListingAddress =
        0x16F45b114bfe88e7Dc55d49f5631a991c6b265d9;

    address constant _tokenCivilResponsebilityAddress =
        0x236c0B2EC8A7254A15BD3b36ceFeC7de00BdBA93;
    address constant _tokenProjectOwnerReserveAddress =
        0xD8Adba8A28E7E23fb67A0b254D993702324ef800;

    address constant _tokenStrategicReserveAddress =
        0x1Ab16Eed90A45B1852821Cb638DfB273A62255E0;
    address constant _tokenBurnAddress =
        0x22f335c3b53867686FA6b54b8A9D5c5CaFF20516;

    constructor() ERC20(_tokenName, _tokenSymbol) {
        // IEO
        _mint(_tokenOfferAddress, _tokenToOffer * 10**18);

        // Fintech reward
        _mint(_tokenFintechAddress, _tokenFintech * 10**18);

        // Product promotion
        _mint(_tokenPromotionAddress, _tokenPromotion * 10**18);

        // Management, marketing reserve
        _mint(_tokenManagementReserveAddress, _tokenManagementReserve * 10**18);

        // Cooperation reward
        _mint(_tokenCooperationAddress, _tokenCooperation * 10**18);

        // Exchange listing
        _mint(_tokenListingAddress, _tokenListing * 10**18);

        // Civil responsibility
        _mint(
            _tokenCivilResponsebilityAddress,
            _tokenCivilResponsibility * 10**18
        );

        // Project owners reserve
        timelockProjectOwnerReserve = new TokenTimelock(
            this,
            _tokenProjectOwnerReserveAddress,
            block.timestamp + 60 * 60 * 24 * 365 * 3
        );
        _mint(
            address(timelockProjectOwnerReserve),
            _tokenProjectOwnerReserve * 10**18
        );

        // Strategic reserve
        _mint(_tokenStrategicReserveAddress, _tokenStrategicReserve * 10**18);

        // Burn
        _mint(_tokenBurnAddress, _tokenBurn * 10**18);
    }
}
