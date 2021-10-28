// contracts/BIDCoin.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/TokenTimelock.sol";

contract BIDCoin is ERC20 {
    TokenTimelock public timelockFintechProductReward;
    TokenTimelock public timelockTraditionalProductReward;
    TokenTimelock public timelockManagementTeamAdvisors;
    TokenTimelock public timelockCustomersReward;
    TokenTimelock public timelockInternationalListing;
    TokenTimelock public timelockSocialResponsibility;
    TokenTimelock public timelockProjectOwners;
    TokenTimelock public timelockStrategicResource;
    TokenTimelock public timelockBurn;

    constructor() ERC20("BIDCoin", "BID") {
        uint fiveYears = 5*365*24*60*60;

        // IEO
        _mint(0x4B6BA7bf86A33a290cbdDfb11917854D62E3572e, 40000000000*10**18);

        // === 5 years lock start ===
        timelockFintechProductReward = new TokenTimelock(this, 0x219A5C4d2941a40eB1A827b660CDEEb8155eAB1A, block.timestamp + fiveYears);
        _mint(address(timelockFintechProductReward), 3000000000*10**18);

        timelockTraditionalProductReward = new TokenTimelock(this, 0x9B91Ab136427266D0ab922007B24FA9f139BB13F, block.timestamp + fiveYears);
        _mint(address(timelockTraditionalProductReward), 1500000000*10**18);

        timelockManagementTeamAdvisors = new TokenTimelock(this, 0x231759F95Db947337fe0a242A512be2D491d8667, block.timestamp + fiveYears);
        _mint(address(timelockManagementTeamAdvisors), 20000000000*10**18);

        timelockCustomersReward = new TokenTimelock(this, 0x386dAC699F12afC2Ef2eE6841638c636b94B0d5D, block.timestamp + fiveYears);
        _mint(address(timelockCustomersReward), 1000000000*10**18);

        timelockInternationalListing = new TokenTimelock(this, 0x5c9A7C5d227E0FfFbe3C6696fb4df88cbe69d073, block.timestamp + fiveYears);
        _mint(address(timelockInternationalListing), 40000000000*10**18);

        timelockSocialResponsibility = new TokenTimelock(this, 0xC3e14541726D7a1066E26daA9f4103EC4138d403, block.timestamp + fiveYears);
        _mint(address(timelockSocialResponsibility), 500000000*10**18);

        timelockProjectOwners = new TokenTimelock(this, 0x8265Fc259F5b200eca5312B34F2888f614f33367, block.timestamp + fiveYears);
        _mint(address(timelockProjectOwners), 24000000000*10**18);

        timelockStrategicResource = new TokenTimelock(this, 0x2e0BaAAc84Abdad4157ff66C5475BB92c07aED76, block.timestamp + fiveYears);
        _mint(address(timelockStrategicResource), 20000000000*10**18);

        timelockBurn = new TokenTimelock(this, 0xF4cb809A6ab645e54c8a7BeDfeDee3331b269b40, block.timestamp + fiveYears);
        _mint(address(timelockBurn), 10000000000*10**18);
        // === 5 years lock end ===
    }
}