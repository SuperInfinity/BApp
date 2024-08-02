// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract HotelAccess {

    uint public owner_var = 1;
    uint public manager_var = 1;
    uint public waiter_var = 1;
    address public owner; 
    mapping (address => bool) public managers;
    mapping (address => bool) public waiters;

    constructor() {
        owner = msg.sender;
    }

    // only updated by the current owner
    function updateOwner(address newOwner) public {
        require(msg.sender == owner, "You are not the owner");
        owner = newOwner;
    }

    // only updated by the current owner
    function addManeger(address manager) public {
        require(msg.sender == owner, "You can not add manager");
        managers[manager] = true;
    }

    // only updated by the current owner
    function RemoveManager(address manager) public {
        require(msg.sender == owner, "Wou can not remove manager");
        managers[manager] = false;
    }

    // yet to be done..!
    // // only updated by the current owner
    // function addWaiter(address waiter) public {}

    // // only updated by the current owner
    // function removeWaiter() public {}


}