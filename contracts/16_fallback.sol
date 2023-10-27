// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Fallback {

    event Log(uint gas);

    fallback () external payable {
        emit Log(gasleft());
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}

contract SendToFallback {

    function transferToFallback(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function callToFallback(address payable _to) public payable {
        (bool sent, ) = _to.call{value:msg.value}("");
        require (sent, "failed to send");
    }
}