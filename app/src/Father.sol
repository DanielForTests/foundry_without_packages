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
        uint finalResult = _fatherNumber + 0 + 0 + 1;
        setGrandFatherNumber(finalResult);
    }
}

contract Uncle {
    // This is a completely separate root contract with its own data and logic
    uint256 public uncleNumber;
    // a mapping of adresses to uints
    mapping(address => uint) public balances;

    constructor(uint _uncleNumber) {
        uncleNumber = _uncleNumber + 100169;
    }

    function setUncleNumber(uint256 _uncleNumber) public {
        uncleNumber = _uncleNumber;
    }

    function getUncleNumber() public view returns (uint256) {
        return uncleNumber;
    }

    function setBalance(address _address, uint _balance) public {
        balances[_address] = _balance;
    }

    function getBalance(address _address) public view returns (uint) {
        return balances[_address];
    }

    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }

    function weakPrng() public view returns (uint) {
        return
            uint(
                keccak256(
                    abi.encodePacked(
                        block.timestamp,
                        block.coinbase,
                        block.number,
                        blockhash(block.number - 1),
                        block.gaslimit,
                        block.timestamp,
                        block.timestamp,
                        block.timestamp
                    )
                )
            ) % 100;
    }

    function getRandomBalanceAdded() public view returns (uint) {
        return balances[msg.sender] + weakPrng() * (block.timestamp % 100);
    }

    function onlyOnCancun() public view returns (bool) {
        return (block.basefee + (block.blobbasefee % 2)) == 0;
    }
}
