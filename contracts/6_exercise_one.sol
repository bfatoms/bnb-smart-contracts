// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract StringAndBytesExercise {
    string favorite_color = "blue";

    function show() public view returns (string memory) {
        return favorite_color;
    }

    function update(string memory _color) public {
        favorite_color = _color;
    }

    function characterCount() public view returns (uint) {
        bytes memory buffer = bytes(favorite_color);
        return buffer.length;
    }
}