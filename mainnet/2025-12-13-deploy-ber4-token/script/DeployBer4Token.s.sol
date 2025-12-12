// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title Ber4Token
 * @notice Simple ERC20 token for L2 deployment
 */
contract Ber4Token is ERC20 {
    constructor() ERC20("ber4", "ber4") {
        // Mint initial supply to deployer
        _mint(msg.sender, 1000000 * 10**18); // 1M tokens with 18 decimals
    }
}

contract DeployBer4Token is Script {
    // Token parameters
    string constant TOKEN_NAME = "ber4";
    string constant TOKEN_SYMBOL = "ber4";
    
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        
        // Deploy the ERC20 token directly (L2 native token)
        Ber4Token token = new Ber4Token();
        
        console.log("Deployed ber4 token at:", address(token));
        console.log("Token name:", TOKEN_NAME);
        console.log("Token symbol:", TOKEN_SYMBOL);
        console.log("Deployer address:", msg.sender);
        
        vm.stopBroadcast();
    }
}

