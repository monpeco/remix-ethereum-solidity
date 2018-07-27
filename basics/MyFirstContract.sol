pragma solidity ^0.4.0;

interface Regulator {
    function checkValue(uint amount) returns (bool);
    function loan() returns (bool);
}

contract Bank is Regulator{
    uint private value;
    string internal other;
    address private owner;
    
    function Bank(uint initialAmount){
        value = initialAmount;
        owner = msg.sender;
    }
    
    // To prevent no one but the owner make an operation
    modifier ownerFunc{
        require(owner == msg.sender);
        _;
    }
    
    function deposit(uint amount) internal ownerFunc{
        value += amount;
    }
    
    function withdraw(uint amount) private ownerFunc{
        if (checkValue(amount)){
            value -= amount;
        }
    }
    
    function balance() returns (uint){
        return value;
    }
    
    //function lending() returns (bool); // Abstract method
    
    function checkValue(uint amount) returns (bool) {
        return value >= amount;
    }
    
    function loan() returns (bool){
        return value > 0;
    }

}

contract MyFirstContract is Bank(110){
    string private name;
    int private age;
    
    function setName(string newName){
        other = "default";
        name = newName;
    }
    
    function getName() returns (string){
        return name;
    }
        
    function setAge(int newAge){
        age = newAge;
    }
    
    function getAge() returns (int){
        return age;
    }

    //function lending() returns (bool){
    //    return true;
    //} // Abstract method implementation

}

contract TestThrow {
    function testAssert(){
        assert(false);      //validation input in runtime
    }
    
    function testRequire(){
        require(2 == 1);    //parameter require
    }
    
    function testRevert(){
        revert();
    }
    
    function testThrow(){
        throw;
    }
}