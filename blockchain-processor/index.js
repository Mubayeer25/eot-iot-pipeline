const { ethers } = require("ethers");
const crypto = require("crypto");

const processData = (iotData) => {
    const hash = crypto.createHash('sha256').update(iotData).digest('hex');
    contract.logData("sensor1", hash); 
}