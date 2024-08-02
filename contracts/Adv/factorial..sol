// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Factorial {

    function factorial(uint num) public pure returns(uint) {
        
        uint ans = 1;
        for (uint i = 1; i < num; i++) {
            ans *= i;
        }

        return ans;
    }
}