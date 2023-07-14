# Creating a Token

This is a solidity program for creating a token called AshToken. This program allows for the burning and minting of tokens along with keeping track of the balances of different addresses.
## Description

This is a solidity program for creating a token called AshToken. This program allows for the burning and minting of tokens along with keeping track of the balances of different addresses.

The token details which includes token name, token acronym, and the total supply of tokens are stored as public variables in the contract.

The program contains the mint function which increases the total supply of tokens in circulation.

It also has a mapping function which keeps track of various addresses and their balances.

The contract has a burn function that lowers the balance of a particular address and the overall quantity of tokens. This function, which also requires an address and a value, operates in the opposite manner as the mint function.

The conditional statement in burned function makes sure that the amount to be burned is always more than the balance present in that address.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ashtokens.sol). Copy and paste the following code into the file:

```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract AshToken {

string public tokenname = "STEAMEX";
string public tokenAbbriv = "STMX";
uint public totalSupply = 1;

mapping(address => uint) public balances;

function mint (address adr, uint data) public {
    totalSupply += data;
    balances[adr] += data;
}
    
function burn (address adr, uint data) public {
    if(balances[adr] >= data){
        totalSupply -= data;
        balances[adr] -= data;
    }
    
}
}
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.9" (or another compatible version), and then click on the "ashtokens.sol" button.

Click on the "Compile" button to compile the smart contract code. Verify that the compilation is successful without any errors.

In the "Deploy & Run Transactions" panel on the right-hand side of the Remix IDE, select the desired network environment (e.g., JavaScript VM or Injected Web3).

Click on the "Deploy" button to deploy the smart contract.
Once the contract is deployed, you will see the contract's details, including the contract address, in the "Deployed Contracts" section.

Interact with the contract:

a. Click on the Tokenname and tokenAbbriv to get the name of the token you have set and its abbrivation.

b. Also click on the totalSupply to display the initial supply of your token.

c. Mint new tokens by calling the mint function and providing an address and a value as parameters. This function adds the specified number of token to your account.

d. Burn tokens by calling the burn function and providing an address and a value as parameters. This function reduces the total supply of token by burning the specified number of tokens from the account.

e. View token balances by accessing the balances mapping and providing an address as the key.


## Authors

Asha Raju

aditya.asha@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
