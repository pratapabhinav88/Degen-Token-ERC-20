// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DegenGamingToken {

    uint256 private _totalSupply;
    mapping(address => uint256) private _balances;

    event Mint(address indexed recipient, uint256 amount);
    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Redeem(address indexed recipient, uint256 amount, string prizeSelection);
    event Burn(address indexed owner, uint256 amount);

    constructor(uint256 initialSupply) {
        _totalSupply = initialSupply;
        _balances[msg.sender] = _totalSupply;
        emit Mint(msg.sender, _totalSupply);
    }

    function mint(address recipient, uint256 amount) public {
        require(msg.sender == owner(), "Only the contract owner can mint tokens");
        _totalSupply += amount;
        _balances[recipient] += amount;
        emit Mint(recipient, amount);
    }

    function transfer(address recipient, uint256 amount) public {
        require(_balances[msg.sender] >= amount, "Not enough tokens to transfer");
        _balances[msg.sender] -= amount;
        _balances[recipient] += amount;
        emit Transfer(msg.sender, recipient, amount);
    }

    function redeem(uint256 amount, string memory prizeSelection) public {
        require(_balances[msg.sender] >= amount, "Not enough tokens to redeem");
        _balances[msg.sender] -= amount;
        _totalSupply -= amount;
        emit Redeem(msg.sender, amount, prizeSelection);
    }

    function burn(uint256 amount) public {
        require(_balances[msg.sender] >= amount, "Not enough tokens to burn");
        _balances[msg.sender] -= amount;
        _totalSupply -= amount;
        emit Burn(msg.sender, amount);
    }

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }

    function owner() public view returns (address) {
        return msg.sender;
    }

}
