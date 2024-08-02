// SPDX-License-Identifier: GPL

pragma solidity >=0.8.2 <0.9.0;


contract calculate {
    function sub(uint a, uint b) public pure returns (uint) {
        return a - b;
    }

    function div(uint a, uint b) public pure returns (uint) {
        return a / b; 
    }

    function internalF() internal pure returns (uint) {
        return 0;
    }

}

contract AlgerbricOp is calculate{
    uint add_res;
    uint mul_res;


    function cal(uint a, uint b) public pure returns (uint, uint) {
        uint s = sub(a, b);
        uint d = div(a, b);
        
        return (s, d);
    } 

    function add(uint a, uint b) public {
        add_res = a + b;
    }

    function mul(uint a, uint b) public {
        mul_res = a * b;
    }

    function greet() public pure returns (string memory) {
        return 'hello world..!';
    }
}