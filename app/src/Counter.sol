// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber + 1;
    }

    function increment() public {
        number++;
    }
}