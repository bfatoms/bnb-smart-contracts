// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Owner {

    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    modifier costs(uint _price) {
        require(msg.value >= _price);
        _;
    }
}


contract Register is Owner {

    mapping(address => bool) registered_address;

    uint price;

    constructor(uint initial_price) {
        price = initial_price;
    }

    function register () public payable costs(price)  {
        registered_address[msg.sender] = true;
    }

    function updatePrice(uint _price) public onlyOwner {
        price = _price;
    }
}