// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract RestrictedAccess {

    address public owner = msg.sender;

    uint created_at = block.timestamp;

    modifier onlyOwner (address _addr) {
        require(_addr == owner, "Sender not Authorized");
        _;
    }

    modifier onlyAfter(uint time) {
        require(block.timestamp >= time, "Too early");
        _;
    }

    modifier onlyBy(address _addr) {
        require(owner == _addr, "Can only be triggered by owner");
        _;
    }

    modifier costs (uint _amount) {
        require(msg.value == _amount, "Not enough ether");
        _;
    }

    function changeOwner(address _addr) public onlyOwner(_addr) {
        owner = _addr;
    }

    function disown() public payable onlyBy(owner) onlyAfter(created_at + 3 weeks) costs(200 ether) {
        delete owner;
    }

}