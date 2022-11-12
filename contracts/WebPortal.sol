pragma solidity 0.8.17;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[10] user;

    constructor() {
        console.log("Hello World this is Saptarshee");
    }

    function wave() public {
        user[totalWaves] = msg.sender;
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWave() public view returns (uint256) {
        console.log("We have %d total waves", totalWaves);
        return totalWaves;
    }

    function printAdd() public payable returns (address){  
        address x = user[totalWaves];
        console.log("Test");
        return x;  
  }  
}
