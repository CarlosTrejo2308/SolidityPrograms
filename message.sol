pragma solidity >=0.4.22 <0.7.0;

contract Message {
    uint public lines;
    
    function setLines(uint _lines) public {
        lines = _lines;
    }
    
    function getLines() public view returns(uint) {
        return lines;
    }
}
