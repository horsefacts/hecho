// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Script.sol";

interface IEcho {
    function echo(string calldata) external;
}

contract Deploy is Script {
    function run() public returns (IEcho echo) {
        echo = IEcho(HuffDeployer.deploy("Echo"));
    }
}
