// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract counter{
    uint cart;
    string product;    
    address _address;

    function updateCart(uint value) public payable {
        require (_address == msg.sender, "Proceed with transaction");
            value = 0;
            value ++;        
    }
}

contract _counter{
    uint cart;
    string product;
    address _address;

    function updateCart(address _contract, uint value) public payable {
        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("updateCart(uint)", value)
        );
    }
}