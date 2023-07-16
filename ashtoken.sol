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
