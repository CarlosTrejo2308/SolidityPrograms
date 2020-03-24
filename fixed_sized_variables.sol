pragma solidity >=0.4.22 <0.7.0;

contract BytesFixedArrays {
    //variables in storage
    bytes2 public x;
    bytes3 public y;
    
    //intialize variables
    function setX_Y() public {
        x = 'ab';
        y = 'abc';
    }
    
    //gets an specific char form the array
    function getX(uint i) public view returns(bytes1) {
        return x[i];
    }
    
    //gets the lengths of x 
    function get_x_length() public view returns(uint) {
        return x.length;
    }
}
