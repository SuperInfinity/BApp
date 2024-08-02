// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Bank {

    address public owner;
    mapping (address => uint) balances;

    constructor() {
        owner = msg.sender;
    }

    function depo() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint amt) public payable {
        require(balances[msg.sender] >= amt, "Not sufficient Balance");
        balances[msg.sender] -= amt;
        payable(msg.sender).transfer(amt);
    }

    function transfer(uint amt) public payable {
        require(balances[msg.sender] >= amt, "Not sufficient Balance");
        balances[msg.sender] -= amt;
    }

}