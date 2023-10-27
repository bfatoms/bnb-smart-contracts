// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract LessonOne {

    function getResult() public pure returns(uint) {
        uint a=7;
        uint b=8;
        uint result = a+b;
        return result;
    }
}