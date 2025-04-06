pragma solidity ^0.8.0;

contract DataLogger {
    struct Record {
        uint256 timestamp;
        bytes32 dataHash;
    }
    
    mapping(string => Record) public records;
    
    function logData(string memory deviceId, bytes32 hash) public {
        records[deviceId] = Record(block.timestamp, hash);
    }
}