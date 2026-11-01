// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
contract Bank{
    uint balance=0;
    address public accOwner;
    constructor (){
        accOwner=msg.sender;
    }
    function Deposit() public payable{
        require(accOwner==msg.sender, "You are not an account owner");
        require(msg.value>0, "Amount should be greater than 0!");
        balance+=msg.value;
    }
    function Withdraw() public payable{
        require(accOwner==msg.sender, "You are not an account owner");
        require(msg.value>0, "Amount should be greater than 0!");
        balance-=msg.value;
    }
    function showBalance() public view returns(uint){
        require(accOwner==msg.sender, "You are not an account owner");
        return balance;
    }
}