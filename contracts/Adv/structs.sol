// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Students {

    struct Student {
        uint id;
        uint[5] marks;
        string name;
        
    }

    Student[] public students;

    function setData(uint id, uint[5] memory marks, string memory name) public {
        Student memory temp;
        temp.id = id;
        temp.name = name;
        temp.marks = marks;
        students.push(temp);
    }

    function updateInfo(uint id, string memory name, uint sub, uint marks) public {
        Student storage tmp = students[id];
        tmp.name = name;
        tmp.marks[sub] = marks;
        students[id] = tmp;
    }

    function seeMarks(uint id, uint sub) public view returns (uint) {
        Student storage tmp =  students[id];
        uint[5] storage marks = tmp.marks;
        return marks[sub];
    }

}