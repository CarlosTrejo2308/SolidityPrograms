pragma solidity >=0.4.22 <0.7.0;

contract Property {
    string public location = "London";
    uint[] public prices;
    
    function add_price(uint _price) public {
        prices.push(_price);
    }
    
    function get_length() public view returns(uint) {
        return prices.length;
    }
    
    function get_element(uint index) public view returns(uint) {
        if (index < prices.length) {
            return prices[index];    
        }
    }
    
    function delete_element(uint index) public returns(bool) {
        if (index < prices.length) {
            for (uint i = index; i < prices.length - 1; i++) {
                prices[i] = prices[i + 1];
            }
            
            prices.pop();
            
            return true;
        }
        else {
            return false;
        }
        
    }
    
}
