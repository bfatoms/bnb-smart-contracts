// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Functions {
    uint oranges = 5;

    function validateOranges() public view returns(bool) {
        if(oranges == 5){
            return true;
        }
        else{ return false; }
    }

    uint staking_wallet = 10;

    function airdrop() public view returns(uint){
        if(staking_wallet == 10){
            return staking_wallet+10;
        }
        return staking_wallet+1;
    }
}