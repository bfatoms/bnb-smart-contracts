// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract learnArrays {
    uint[] changedArray = [1,2,3,4];

    function removeElement(uint i) public {
        changedArray[i] = changedArray[changedArray.length-1];
        changedArray.pop();
    }
    
    function getChangedArray() public view returns (uint[] memory) {
        return changedArray;
    }
}