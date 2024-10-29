pragma solidity ^0.8.0;

contract LessSimpleContract {
    uint256 public randomNumber;

    constructor(uint _constructorNumber) {
        randomNumber = _constructorNumber;
    }

    function setNumber(uint256 _number) public {
        randomNumber = _number * (2 + (_number % 169));
    }

    function getNumber() public view returns (uint256) {
        return randomNumber;
    }
}
