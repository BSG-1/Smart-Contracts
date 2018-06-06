pragma solidity ^0.4.23; //use 0.4.23 and newer

/* 
Goal: take a string upon start and repeat it when greet() is called
*/

//define the contract; same name constructor automatically called when contract created
contract Greeter {
    address creator; //pliable address variable, not set to anything
    string greeting; //pliable string variable, not set to anything

    //this is the constructor (same name as contract) --> takes a string and saves it TO the 'greeting' string variable
    function Greeter (string _greeting) public {
        creator = msg.sender; //whoever is the sender is assigned as the 'creator'
        greeting = _greeting;
    }
}