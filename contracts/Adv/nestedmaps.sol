// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract NMaps {

    mapping (uint => mapping (string => uint)) public marks;

    function setMarks(uint _id, string memory _subject, uint _marks) public  {
        marks[_id][_subject] = _marks;
    }
}