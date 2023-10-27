// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract LearnEnum {
    enum Sizes {SMALL, MEDIUM, LARGE}

    Sizes size;

    function small() public {
        size = Sizes.SMALL;
    }
    function medium() public {
        size = Sizes.MEDIUM;
    }
    function large() public {
        size = Sizes.LARGE;
    }

    function getSize() public view returns (Sizes) {
        return size;
    }
}