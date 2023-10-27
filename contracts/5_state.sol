// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract States {
    uint public data = 10;

    function x() public view returns(uint) {
        uint _data = data+15;
        return _data;
    }

    function y() public view returns(uint) {
        return data;
    }
}