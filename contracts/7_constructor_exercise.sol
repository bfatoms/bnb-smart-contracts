// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Base {
    uint value = 5;

    constructor (uint _v) {
        value = _v;
    }
}

contract Derived is Base {
    constructor(uint _v) Base(_v) {
    }

    function getValue() public view returns (uint) {
        return value;
    }
}