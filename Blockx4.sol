pragma solidity ^0.4.17;
contract CommunityChest {
    
    function withdraw(uint _value) public{
        msg.sender.transfer(_value);// address (this).balance

    }
    // function deposit(uint256 amount) payable public{
    //     require(msg.value==amount);
    //     amount=msg.value;
    // }
   
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
     function receive() payable external {}
    
}
  
 

