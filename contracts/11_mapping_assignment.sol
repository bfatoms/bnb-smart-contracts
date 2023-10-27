// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Allowance {

    mapping(address => mapping(address => uint)) allowance;

    // this function removes spender allowance
    function remove (address _addrOwner, address _addrSpender) public {
        delete allowance[_addrOwner][_addrSpender];
    }

    function addPair (address _addrOwner, address _addrSpender, uint _id) public {
        allowance[_addrOwner][_addrSpender] = _id;
    }

    function getAllowance (address _addrOwner, address _addrSpender) public view returns (uint) {
        return allowance[_addrOwner][_addrSpender];
    }
    
}