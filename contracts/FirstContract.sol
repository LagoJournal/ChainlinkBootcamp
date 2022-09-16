//SPDX-License-Identifier: GPL-3.0

pragma solidity 0.6.7;
pragma experimental ABIEncoderV2;


contract MyFirstContract {
 
    uint256 public number = 0;
    string[] public names;
    mapping(string => uint) public mobileNum;

 
    function changeNumber(uint256 _num) public {
        number += _num;
    }
 
 
    function getNumber() public view returns (uint256){
        return number;
    }

    function getNumberMultiplied(uint _num) public view returns (uint){
        return number * _num;
    }

    function addNumbers(uint _num, uint _num1) public{
        number = _num + _num1;
    }

    function push(string memory _name) public{
        names.push(_name);
    }

    function getName(uint _id) public view returns (string memory){
        return names[_id];
    }

    function addMobileNumber(string memory _name, uint _mobNum) public{
        mobileNum[_name] = _mobNum;
    }

    function getMobileNumber(string memory _name) public view returns (uint){
        return mobileNum[_name];
    }

    function getAmmountNames() public view returns (uint){
        return names.length;
    }

    function getAllNames() public view returns (string memory){
        uint _id = getAmmountNames();
        string memory allNames = "All names are:";
        for(uint i = 0; i < _id; i++){
            allNames = string(abi.encodePacked(allNames," ", getName(i)));
        }
        return allNames;
    }
}
