// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract bankContract{

    uint256 public balance;

    constructor(){
        balance = 700; 
    }

    // Using require we will check if the input is valid
    function deposit(uint256 amount) public {
        require(amount > 0, "Amount must be greater than zero");
        balance += amount;
    }

    // Using assert we will check if there is any internal error
    function balanceAmount() public view returns (uint256) {
        assert(balance >= 0);
        return balance;
    }

    // Using revert we will check specific conditions
    function withdraw(uint256 amount) public {
        if (amount > balance) {
            revert("Insufficient balance");
        }
        balance -= amount;
    }
}
