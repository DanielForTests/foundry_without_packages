pragma solidity ^0.8.0;

contract SimpleContract {
    uint256 public randomNumber;

    constructor() {
        randomNumber = uint256(keccak256(abi.encodePacked(block.timestamp)));
    }

    function setNumber(uint256 _number) public {
        randomNumber = _number * 2;
    }

    function getNumber() public view returns (uint256) {
        return randomNumber;
    }
}
