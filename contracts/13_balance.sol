// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract LedgerBalance {
    mapping(address => uint) balance;

    function update(uint new_balance) public {
        balance[msg.sender] = new_balance;
    }

    function show() public view returns(uint) {
        return balance[msg.sender];
    }
}

contract newLedgerBalance {
    LedgerBalance ledger_balance;

    function updateBalance(uint _new_balance) public {
        ledger_balance = new LedgerBalance();
        ledger_balance.update(_new_balance);
    }
}