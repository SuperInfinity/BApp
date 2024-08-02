// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Storage {

    uint256 number1;
    uint256 number2;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num, uint256 num2) public {
        number1 = num;
        number2 = num2;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number1 + number2;
    }
}