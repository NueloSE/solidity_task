// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/** 
 * @title Ballot
 * @dev Implements voting process along with vote delegation
 */

contract SetterGetter{
    uint addedNum;
    uint divdNum;
    string name;

    /**
     * @dev sets the value of name
     */
    function setName(string memory _name) public {
        name = _name;
    }

    /**
     * @dev prints the value of name variable
     */
    function printName() public view returns(string memory) {
        return name;
    }
//================================================================
    /**
     * @dev adds two numbers
     * param num1, num2
     */
    function sum(uint num1, uint num2) public {
        addedNum = num1 + num2;
    }

    /**
     * @dev prints the value of addedNum
     */
    function printSum() public view returns(uint) {
        return addedNum;
    }
//=============================================================

    // modifier zeroDiv(uint num)  {
    //     require (num != 0, "Error zerodivision not allowed");
    //     _;
    // }
    /**
     * @dev divides 2 numbers
     * param num1: divider, num2: divisor
     */
    function division(uint num1, uint num2) public {
        if (num2 != 0) {
            divdNum = num1 / num2;
        }
    }
    /**
     * @dev prints the value of divdNum
     */
     function printDivison() public view returns(uint) {
        return divdNum;
    } 
}