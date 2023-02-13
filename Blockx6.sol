pragma solidity ^0.8.0;
contract Hashing{
    
    function call_keccak (address address1) external pure returns (bytes32 Hash){
        Hash =keccak256(abi.encodePacked(address1));
        return Hash;

    }
}
