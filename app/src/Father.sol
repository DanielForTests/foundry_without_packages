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
        if (block.timestamp % 2 == 0) {
            finalResult += 1;
        }
        fatherNumber = _fatherNumber * 3;
        if (block.timestamp % 3 == 0) {
            finalResult += 1;
        }
        if (block.timestamp % 5 == 0) {
            finalResult += 1;
        }
        if (block.timestamp % 7 == 0) {
            finalResult += 1;
        }
        if (block.timestamp % 11 == 0) {
            finalResult += 1;
        }
        if (block.timestamp % 13 == 0) {
            finalResult += 1;
        }
        if (block.timestamp % 17 == 0) {
            finalResult += 1;
        }
        if (block.timestamp % 19 == 0) {
            finalResult += 1;
        }
        setGrandFatherNumber(finalResult);
    }
}
