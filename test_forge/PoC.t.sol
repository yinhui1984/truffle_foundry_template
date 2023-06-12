// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.10;

import "../lib/forge-std/src/Test.sol";
import "../contracts/PoC.sol";

contract TestPoC is Test {
    PoC poc;

    function setUp() public {
        poc = new PoC();
        vm.label(address(poc), "PoC");
        vm.label(address(this), "this");
    }

    function testHack() public {
    }
}
