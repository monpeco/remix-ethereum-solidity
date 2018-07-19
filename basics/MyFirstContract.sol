pragma solidity ^0.4.0;

contract MyFirstContract{
    string private name;
    int private age;
    
    function setName(string newName){
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
    
}