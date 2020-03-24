pragma solidity >=0.4.22 <0.7.0;

contract Property {
    uint public price;
    string public location;
    address public owner;
    
    constructor(uint _price, string memory _location) public {
        price = _price;
        location = _location;
        owner = msg.sender;
    }
    
    //creates a transaction and costs gas
    function setPrice(uint _price) public {
        price = _price;
    }
    
    //this function creates a call and it`s free
    function getPrice() public view returns (uint) {
        return price;
    }
    
    function setLocation(string memory _location) public {
        location = _location;
    }
    
    function getLocation() public view returns (string memory) {
        return location;
    }
    
    
}
