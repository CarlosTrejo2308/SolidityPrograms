pragma solidity >=0.4.22 <0.7.0;

contract SimpleContrat {
    int public age;
    string public description;
    int public b;
    
    function setAge(int _age) public {
        age = _age;
    }
}
