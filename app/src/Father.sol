// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Inherited.sol";

contract GrandFather {
    uint256 public grandFatherNumber;

    function setGrandFatherNumber(uint256 _grandFatherNumber) public {
        grandFatherNumber = _grandFatherNumber;
    }
}

contract Father is Inherited, GrandFather {
    // Add your contract logic here
    uint256 public fatherNumber;

    constructor(uint _fatherNumber) {
        uint finalResult = _fatherNumber + 1;
        setGrandFatherNumber(finalResult);
    }
}
