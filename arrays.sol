pragma solidity >=0.4.22 <0.7.0;

contract IntFixedArrays {
    int[3] public x = [10, 20, 30];
    
    function set_element(uint i, int value) public {
        x[i] = value;
    }
}
