// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Conditions {

    function mul(uint num) pure public returns (string memory) {

        if (num > 18) {
            return "num > 18";
        } else if (num == 18) {
            return "num == 18";
        } else {
            return "num < 18";
        }
    }
}
