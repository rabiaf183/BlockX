pragma solidity ^0.4.17;
contract CommunityChest {
    uint256 public perioddelay;
    constructor() public{
         perioddelay= block.timestamp + 50 seconds;
    }
   
    function withdraw() public{
        require(block.timestamp > perioddelay, "duration incomplete");
        msg.sender.transfer(address(this).balance);

    }
    
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
     function receive() payable external {}
    
}
