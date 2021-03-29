<!--
 * @Author: OOO--li--OOO
 * @Date: 2021-03-23 15:33:27
 * @LastEditTime: 2021-03-23 15:34:07
-->
### 测试网地址：cfxtest:type.contract:acdarabvxm7berpv3f3ch284jng1pypkujukem1eut
### 旧地址：0x860680319aBA123591c97223E3da42Cd76518982

### ABI:

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.7.0;
pragma experimental ABIEncoderV2;
//contract token { function transfer(address receiver, uint amount) public { receiver; amount; } }

contract DemandFactory {
  address public admin;
  uint public index;
  //token public coin;


name	code hash / address	
DemandFactory
0x2ec01961070f5f249cde59970c20ef1b0eabf46b7efc419aebbc099de73bf8a4	
Coin
0xc725e692aac60dfa1ac1ed11c716b78a36297f706ebeafcd9b6c063a5478be4b	
GLDToken
0xb338bf60a30433c3ca59cce32d09f98413a943d74b1ca23e5b066b38e55b9e5d	
Coin
0x9cf46f9a498af3532d72bde826626f3d77499d9105f41ef0a904dea70df609ca	
Coin
0xc78dc90400304dd5ed8251ee46defbaea2443079e518f7a4c8b9c3dc18a2d317	
DonateFactory
0x73279010d1a8e9ef04b3eae152d8608300ac7a918ca285a7f03c9464bf80d673	
Coin
0x0b02f71923cabf017bed574969cef98015315e2083c2d3d831cebd5e1bcf1bda	
Coin
0x4f6dfcdb3e005c90cbf7bf5b5713681710b25be253eaf0a5691c35cc26523a52	
Boomflow
0xb523b7e2ce483e43339c6f01d9f26e8b94660d5c29f0ebc8ac951a8547bdd2ae	
FC
0xd33f9b387b882b5d7e222a2c9f0f9fdc4aaa0b0c16c7c65de4d792ac800d1b07	
Coin
0x9d10c43a97dfc42fd97affca75414c370aae06c70e81164dd6301f9b79bb5d42	
AdminControl
0x0888000000000000000000000000000000000000	
Coin
0xb7729c211d062c7fb0e698a698e9981b3d874bd6d6ff1372f0b2fc3d1a7add54	
[
  {
    "inputs": [],
    "stateMutability": "nonpayable",
    "type": "constructor",
    "name": "constructor"
  },
  {
    "anonymous": false,
    "inputs": [
      {
        "indexed": false,
        "internalType": "uint256",
        "name": "id",
        "type": "uint256"
      },
      {
        "indexed": false,
        "internalType": "string",
        "name": "username",
        "type": "string"
      },
      {
        "indexed": false,
        "internalType": "address",
        "name": "sender",
        "type": "address",
        "networkId": 1
      },
      {
        "indexed": false,
        "internalType": "string",
        "name": "content",
        "type": "string"
      },
      {
        "indexed": false,
        "internalType": "string",
        "name": "contact",
        "type": "string"
      },
      {
        "indexed": false,
        "internalType": "uint256",
        "name": "status",
        "type": "uint256"
      }
    ],
    "name": "NewDemand",
    "type": "event"
  },
  {
    "anonymous": false,
    "inputs": [
      {
        "indexed": false,
        "internalType": "address",
        "name": "from",
        "type": "address",
        "networkId": 1
      },
      {
        "indexed": false,
        "internalType": "address",
        "name": "to",
        "type": "address",
        "networkId": 1
      },
      {
        "indexed": false,
        "internalType": "uint256",
        "name": "amount",
        "type": "uint256"
      }
    ],
    "name": "Sent",
    "type": "event"
  },
  {
    "anonymous": false,
    "inputs": [
      {
        "indexed": false,
        "internalType": "uint256",
        "name": "id",
        "type": "uint256"
      },
      {
        "indexed": false,
        "internalType": "uint256",
        "name": "status",
        "type": "uint256"
      }
    ],
    "name": "Update",
    "type": "event"
  },
  {
    "inputs": [],
    "name": "admin",
    "outputs": [
      {
        "internalType": "address",
        "name": "",
        "type": "address",
        "networkId": 1
      }
    ],
    "stateMutability": "view",
    "type": "function"
  },
  {
    "inputs": [
      {
        "internalType": "uint256",
        "name": "",
        "type": "uint256"
      }
    ],
    "name": "demands",
    "outputs": [
      {
        "internalType": "uint256",
        "name": "id",
        "type": "uint256"
      },
      {
        "internalType": "string",
        "name": "username",
        "type": "string"
      },
      {
        "internalType": "address",
        "name": "sender",
        "type": "address",
        "networkId": 1
      },
      {
        "internalType": "string",
        "name": "content",
        "type": "string"
      },
      {
        "internalType": "string",
        "name": "contact",
        "type": "string"
      },
      {
        "internalType": "uint256",
        "name": "status",
        "type": "uint256"
      }
    ],
    "stateMutability": "view",
    "type": "function"
  },
  {
    "inputs": [],
    "name": "index",
    "outputs": [
      {
        "internalType": "uint256",
        "name": "",
        "type": "uint256"
      }
    ],
    "stateMutability": "view",
    "type": "function"
  },
  {
    "inputs": [
      {
        "internalType": "string",
        "name": "_username",
        "type": "string"
      },
      {
        "internalType": "string",
        "name": "_content",
        "type": "string"
      },
      {
        "internalType": "string",
        "name": "_contact",
        "type": "string"
      }
    ],
    "name": "createDemand",
    "outputs": [],
    "stateMutability": "nonpayable",
    "type": "function"
  },
  {
    "inputs": [
      {
        "internalType": "uint256",
        "name": "index",
        "type": "uint256"
      }
    ],
    "name": "getDemandById",
    "outputs": [
      {
        "internalType": "uint256",
        "name": "",
        "type": "uint256"
      }
    ],
    "stateMutability": "view",
    "type": "function"
  },
  {
    "inputs": [
      {
        "internalType": "uint256",
        "name": "index",
        "type": "uint256"
      }
    ],
    "name": "update",
    "outputs": [],
    "stateMutability": "nonpayable",
    "type": "function"
  },
  {
    "inputs": [
      {
        "internalType": "uint256",
        "name": "index",
        "type": "uint256"
      }
    ],
    "name": "failed",
    "outputs": [],
    "stateMutability": "nonpayable",
    "type": "function"
  },
  {
    "inputs": [],
    "name": "destroy",
    "outputs": [],
    "stateMutability": "nonpayable",
    "type": "function"
  }
]
