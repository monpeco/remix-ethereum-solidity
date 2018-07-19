pragma solidity ^0.4.0;

contract Bank {
    uint private value;
    string internal other;
    
    function Bank(uint initialAmount){
        value = initialAmount;
    }
    
    function deposit(uint amount){
        value += amount;
    }
    
    function withdraw(uint amount){
        value -= amount;
    }
    
    function balance() returns (uint){
        return value;
    }
    
    function loan() returns (bool); // Abstract method
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

    function loan() returns (bool){
        return true;
    } // Abstract method implementation

}