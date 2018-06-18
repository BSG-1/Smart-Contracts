pragma solidity ^0.4.0;

contract FuncConcert {

    address owner;
    uint tickets;
    uint constant price = 1 ether;
    mapping (address => uint) purchasers;
}