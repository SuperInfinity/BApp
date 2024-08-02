// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract AddOdd {

    function addOdd(uint num) public pure returns (uint) {
        uint ans = 0;

        for (uint i = 1; i <= num; i += 2) {
            ans += i;
        }

        return ans;
    } 
}