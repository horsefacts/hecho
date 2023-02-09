// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract EchoTest is Test {
    IEcho public echo;

    event Echo(string message);

    function setUp() public {
        echo = IEcho(HuffDeployer.deploy("Echo"));
    }

    function test_echo() public {
        vm.expectEmit(false, false, false, true);
        emit Echo("What hath God wrought?");

        echo.echo("What hath God wrought?");
    }
}

interface IEcho {
    function echo(string calldata) external;
}
