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
        greeting = _greeting; //"_" is a special character that is used in function modifiers. It returns the flow of execution to the original function that is annotated
    }

    function greet() constant returns (string) {
        return greeting;
    }

    //demonstration of a return of a global variable, doesnt actually have anything to do with the greet functionality
    function getBlockNumber() constant returns (uint) {
        return block.number //gives back the mined block number
    }

    //this new function requires a string carrying the _newgreeting modifier
    function setGreeting(string _newgreeting) {
        greeting = _newgreeting;
    }
}