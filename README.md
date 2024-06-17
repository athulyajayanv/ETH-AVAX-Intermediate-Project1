# METACRAFTERS ETH-AVAX INTERMEDIATE PROJECT 1

This Solidity program defines a simple bank contract that demonstrates basic features and syntax of the Solidity programming language.

## Description

This Solidity contract demonstrates a simple banking system, using require(), assert(), and revert() to handle deposits, withdrawals, and balance checks, ensuring valid operations and internal consistency.

## Getting Started

### Executing program

1. To run this program, you can use Remix at https://remix.ethereum.org/.
2. Create a new file by clicking on the "+" icon in the left-hand sidebar.
3. Save the file with a .sol extension.

```javascript
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

```
To compile the code,

1. Go to the 'Solidity Compiler' tab on the left.
2. Set the Compiler to 0.8.7 or a compatible version, and click Compile.
   
Once compiled,

1. Go to the 'Deploy & Run Transactions' tab on the left.
2. click Deploy.

After deploying, you can interact with the contract.

## Authors

Athulya jayan V


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
