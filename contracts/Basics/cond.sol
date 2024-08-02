// SPDX-License-Identifier: GPL

pragma solidity >=0.8.2 <0.9.0;


contract Conditions {

    function check(uint num) public pure returns (string memory) {
        if (num % 2 == 0) {
            return "Even";
        } else {
            return "Odd";
        }
    }
}