// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract ViewPure {
    uint product;

    function multiply() external pure returns (uint){
        return 3 * 7;
    }

    function addValue() external view returns(uint) {
        return product + 3;
    }
}
