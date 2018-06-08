pragma solidity ^0.4.23

/* this contract is going to be a basic while-loop iterator */

contract BasicIterator {
    address creator; //saves initial address as the creator
    uint8[10] integers; //leave storage for 10 8-bit unsigned integers in an array

    //initialze a number iterator
    function BasicIterator() {
        creator = msg.sender; //sets the creator address 
        uint8 x = 0; //initializes an 8-bit unsigned integer 'x' to zero

        //while x is less than 10 (the integers variable was set to a max of 10), set integers from 0-->9 over 10 iterations
        while (x < integers.length) {
            integers[x] = x;
            x++;
        }
    }

    //initialize a return of the total to the reader/user
    //this function always uses a uint (which is exactly 256 bits)
    function getSum() constant returns (uint) {
        uint8 sum = 0;
        uint8 x = 0;
        //iterates over integers array and increases x by 1 every time; also sets the new sum variable to itself plus whatever number the integers variable has landed on that particular iteration 
        while(x <integers.length){
            sum = sum + integers[x];
            x++;
        }
        //returns the sum variable
        return sum;
    }
}