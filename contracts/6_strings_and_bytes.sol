// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract StringAndBytes {
    string greetings = "Hello Charlene";

    function sayHello() public view returns(string memory) {
        return greetings;
    }

    function changeGreeting(string memory _greeting) public {
        greetings = _greeting;
    }

    function getChar() public view returns(uint) {
        bytes memory buffer = bytes(greetings);
        return buffer.length;
    }

}