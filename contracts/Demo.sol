// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

//import library
import '../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '../node_modules/@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol';
import '../node_modules/@openzeppelin/contracts/access/Ownable.sol';
import '../node_modules/@openzeppelin/contracts/token/ERC20/extensions/ERC20FlashMint.sol';

contract Demo is ERC20, ERC20Burnable, Ownable, ERC20FlashMint  {
    constructor() ERC20("Amun", "AMN") {
        _mint(msg.sender, 1000000 * 10 **decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner{
        _mint(to, amount);
    }
}
