pragma solidity ^0.4.23

/* this contract is going to be a basic while-loop iterator */

contract BasicIterator {
    address creator; //saves initial address as the creator
    uint8[10] integers; //leave storage for 10 8-bit unsigned integers in an array

    function BasicIterator() {
        creator = msg.sender; //sets the creator address 
    }
}