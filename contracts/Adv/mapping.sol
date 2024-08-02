// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Students {

    struct Student {
        string name;
        uint marks;
    }

    mapping(uint => Student) public students;

    function setmapping(uint _roll_no, string memory _name, uint _marks) public {
        students[_roll_no] = Student(_name, _marks);
    }
}