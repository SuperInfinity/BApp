// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Arrays {

    uint[] public myarray;


    function addElement(uint ele) public {
        myarray.push(ele);
    }

    function removeEle() public {
        myarray.pop();
    }

    function updateEle(uint _ele, uint _index) public {
        myarray[_index] = _ele;
    }
    
}