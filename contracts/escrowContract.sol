pragma solidity ^0.4.23;
//based on implementation by Pranav K, https://medium.com/@pranav.89/smart-contracting-simplified-escrow-in-solidity-ethereum-b19761e8fe74

import 'zeppelin-solidity/contracts/math/SafeMath.sol';

contract Escrow {

  uint balance;
  address public buyer;
  address public seller;
  address private escrowOwner;
  uint start;
  bool buyerApproval;
  bool sellerApproval;

  constructor(address _buyer, address _seller) public { //creates the contract
    buyer = _buyer;
    seller = _seller;
    escrow = msg.sender;
    start = now;
  }

  function approve() public {
    if (msg.sender == buyer) {
      buyerApproval = true;
    } else if (msg.sender == seller) {
      sellerApproval = true;
    }
    //nobody else can actuate chanvge by calling approve()
    if (buyerApproval = true && sellerApproval == true) {

    }

  }

  function deposit() public payable {
    if (msg.sender == buyer) {
      balance += msg.value; //msg.value is a field inherent to payable calls, represents the amount of money paid into the escrow account
    }
  }

  function checkBalance() public returns(uint) {
    return balance;
  }

  function payout() private {
    escrowOwner.transfer(this.balance/100)
  }
  function kill() public {}

}
