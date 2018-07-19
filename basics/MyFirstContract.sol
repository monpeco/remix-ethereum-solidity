pragma solidity ^0.4.0;

interface Regulator {
    function checkValue(uint amount) returns (bool);
    function loan() returns (bool);
}

contract Bank is Regulator{
    uint private value;
    string internal other;
    
    function Bank(uint initialAmount){
        value = initialAmount;
    }
    
    function deposit(uint amount){
        value += amount;
    }
    
    function withdraw(uint amount){
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