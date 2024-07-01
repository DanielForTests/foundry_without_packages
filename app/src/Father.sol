// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Inherited.sol";

contract Father is Inherited is GrandFather {
    // Add your contract logic here
    uint256 public fatherNumber;

    constructor(uint _fatherNumber) {
        if (block.timestamp % 2 == 0) {
            fatherNumber = _fatherNumber;
        }
        fatherNumber = _fatherNumber * 3;
    }
}

contract GrandFather {
    uint256 public grandFatherNumber;

    function setGrandFatherNumber(uint256 _grandFatherNumber) public {
        grandFatherNumber = _grandFatherNumber;
    }
}
