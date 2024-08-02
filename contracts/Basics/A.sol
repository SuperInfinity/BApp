// SPDX-License-Identifier: GPL

pragma solidity >=0.8.2 <0.9.0;

contract A {

    function exfunc1() external pure returns (uint) {
        return 0;
    }

    function infunc2() internal pure returns (uint) {
        return 0;
    }

    function pubfunc() public pure returns(uint) {
        return 0;
    }

    function privfunc() public pure returns(uint) {
        return 0;
    }


}


contract B is A {

    function callinternalfunc() public pure returns (uint) {
        uint tmp = infunc2();
        return tmp;
    }

    function callpublicfunc() public pure returns (uint) {
        uint tmp = pubfunc();
        return tmp;
    }
}

// contract C {
//     function callextrfunc() public pure returns (uint) {
//         uint = exfunc1();
//     }
// }