pragma solidity ^0.4.0;

contract FuncConcert {

    address owner;
    uint tickets;
    uint constant price = 1 ether;
    mapping (address => uint) public purchasers;

    function FuncConcert() {
        owner = msg.sender;
        tickets = 5;
    }

    //"payable" here makes sure that the contract is able to receive ether
    function buyTickets(uint amount) payable {
        if (msg.value != (amount * price) || amount > tickets){
            throw;
        }

        purchasers[msg.sender] += amount;
    }
}