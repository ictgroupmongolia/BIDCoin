// contracts/BIDCoin.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/TokenTimelock.sol";

contract BIDCoin is ERC20 {
    TokenTimelock public timelockBIDApp;
    TokenTimelock public timelockBIDPay;
    TokenTimelock public timelockBIDShop;
    TokenTimelock public timelockTraditionalMarket;
    TokenTimelock public timelockHRReward;
    TokenTimelock public timelockMerchant;
    TokenTimelock public timelockTrustBondCustomer;
    TokenTimelock public timelockExternalMarketAirdrop;
    TokenTimelock public timelockSocialResponsibilty;
    constructor() ERC20("BIDCoin", "BID") {
        // IEO
        _mint(0x27F9Ea3e7FAB17D730137Bf3Ba0A91793Aac2Ac2, 5000000000*10**18);

        // === 5 years lock start ===
        // BID App
        timelockBIDApp = new TokenTimelock(this, 0xC0638D0796fe5d040907A66B757E5f3C3348eAf6, block.timestamp + 5*365*24*60*60);
        _mint(address(timelockBIDApp), 200000000*10**18);
        // BID Pay
        timelockBIDPay = new TokenTimelock(this, 0x82396E76B4E24aF3d1BED093b514b4aa7984F398, block.timestamp + 5*365*24*60*60);
        _mint(address(timelockBIDPay), 200000000*10**18);
        // BID Shop
        timelockBIDShop = new TokenTimelock(this, 0x1B0FC8638c2fff4b638D144E52f297b7c38f688E, block.timestamp + 5*365*24*60*60);
        _mint(address(timelockBIDShop), 300000000*10**18);
        // Traditional market
        timelockTraditionalMarket = new TokenTimelock(this, 0x145799d361AEA59F883b15D955B1ab4C84159fBF, block.timestamp + 5*365*24*60*60);
        _mint(address(timelockTraditionalMarket), 200000000*10**18);
        // HR reward
        timelockHRReward = new TokenTimelock(this, 0x77C8285E8eb6D27995A83391938df58Ba65d1Dc4, block.timestamp + 5*365*24*60*60);
        _mint(address(timelockHRReward), 300000000*10**18);
        // Merchant
        timelockMerchant = new TokenTimelock(this, 0x5759D00672e0E96793d9C740c779c990602Ce6C1, block.timestamp + 5*365*24*60*60);
        _mint(address(timelockMerchant), 200000000*10**18);
        // Trust, Bond customer
        timelockTrustBondCustomer = new TokenTimelock(this, 0x67F07E55CC9CAC6958e452C32EeCA58e6B63c489, block.timestamp + 5*365*24*60*60);
        _mint(address(timelockTrustBondCustomer), 150000000*10**18);
        // External market, AIRDROP
        timelockExternalMarketAirdrop = new TokenTimelock(this, 0xe2A95FA6DCa4C59caB5B5cBDbcC57D4a9aE77E74, block.timestamp + 5*365*24*60*60);
        _mint(address(timelockExternalMarketAirdrop), 1602000000*10**18);
        // Social responsibility
        timelockSocialResponsibilty = new TokenTimelock(this, 0x54bDDDa4578eDdF43a486e8352cEd29021BE8a0d, block.timestamp + 5*365*24*60*60);
        _mint(address(timelockSocialResponsibilty), 128000000*10**18);
        // === 5 years lock end ===
    }
}