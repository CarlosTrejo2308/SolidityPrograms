pragma solidity >=0.4.22 <0.7.0;

contract Property {
    uint public price = 9000;
    string public location = "Hamburg";
    address public owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function get_balance() view public returns(uint) {
        return address(this).balance;
    }
    
    function sendEther() payable public {
        price = 600;
    }
    
    //Send to contract address
    receive() payable external {
        location = "London";
    }
    
    //creates a transaction and cost gas
    function setPrice(uint _price) public {
        price = _price;
    }
    
    function setLocation(string memory _location) public {
        location = _location;
    }
    
    function transfer_balance(address payable recipient_address, uint amount) public returns(bool){
        if (msg.sender == owner) {
            if (amount <= get_balance()) {
                recipient_address.transfer(amount);    
                return true;
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
        
        
    }
    
}
