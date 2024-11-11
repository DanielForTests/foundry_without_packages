pragma solidity ^0.8.0;

contract LessSimpleContract {
    uint256 public randomNumber;

    constructor(uint _constructorNumber) {
        randomNumber = _constructorNumber;
    }

    function setNumber(uint256 _number) public {
        randomNumber =
            _number +
            uint256(
                int256(13 * (_number % 27)) *
                    (block.timestamp % 2 == 0 ? int256(-1) : int256(1))
            );
    }

    function getNumber() public view returns (uint256) {
        return randomNumber;
    }

    function onlyOnCancun() public view returns (bool) {
        return block.basefee == 0;
    }
}
