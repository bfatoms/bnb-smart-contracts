// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract RandomNumberGenerator {
    Oracle oracle;

    constructor(address _oracle_address) {
        oracle = Oracle(_oracle_address);
    }

    function randMod(uint range) external view returns(uint) {
        return uint(keccak256(abi.encodePacked(oracle.rand, block.timestamp, block.difficulty, msg.sender))) % range;
    }
}

contract Oracle {
    address admin;

    uint public rand;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin);
        _;
    }

    function setRand(uint _rand) external onlyAdmin {
        rand = _rand;
    }
}