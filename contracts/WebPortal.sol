pragma solidity 0.8.17;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[] user;

    constructor() {
        console.log("Hello World this is Saptarshee");
    }

    function wave() public {
        user.push(msg.sender);
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWave() public view returns (uint256) {
        console.log("We have %d total waves", totalWaves);
        return totalWaves;
    }

    function returnArray() public payable returns (address){  
        address x = user[0];
        for(uint256 i=0;i<2;i++){
        console.log(user[i]);

        }
        return x;  
  }  
}
