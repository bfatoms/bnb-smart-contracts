// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract FunctionExercise {
    function multiply(uint a, uint b) public pure returns (uint) {
        uint result = a*b;
        return result;
    }
}