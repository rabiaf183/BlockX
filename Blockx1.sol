pragma solidity ^0.7;
contract task1{
    uint public count;
    
    struct Person{
        uint age;
        string name;
  
    }
    mapping (uint => Person) public Persons;
     constructor() public {
          count=0;
     }
    function _storevalue(uint _age, string memory _name) public {
        Persons[count].age= _age;
        Persons[count].name= _name;
        count=count+1;
    }
    function getage(uint _index) view public returns (uint _age){
        _age= Persons[_index].age;
        return _age;
        
    }
    function getName(uint _index) view public returns (string memory _name){
        _name= Persons[_index].name;
        return _name;
    }
    
    

    
}
