// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Owner {

    address public owner;
    uint public a;

    constructor() {
        owner = msg.sender;
        a = 10;

    }

    function updateA(uint newV) public {
        require(msg.sender == owner, "Only owner can update can upadte");
        a = newV;
    } 
}