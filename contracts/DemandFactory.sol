// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.7.0;
pragma experimental ABIEncoderV2;
//contract token { function transfer(address receiver, uint amount) public { receiver; amount; } }

contract DemandFactory {
  address public admin;
  uint public index;
  //token public coin;

  mapping (address => uint) private balances;

  event Sent(address from, address to, uint amount);
  event NewDemand(uint id, string username, address sender, string content, string contact, uint status);
  event Update(uint id, uint status);

  constructor() public {
    //coin = token(0x89d1Ff8D733Bec9B5b54ce1c7d4ddE433e2Aa303);
    index = 0;
    admin = msg.sender;
  }

  struct Demand {
    uint id;          //需求编号
    string username;  //发起人 or 机构 名称
    address sender;   //发起人address
    string content;   //需求内容
    string contact;   //联系方式
    uint status;      //状态号 0:初始 1：通过 2：捐赠中 3：捐赠完成 4：失败
  }

  Demand[] public demands;

  function createDemand(string memory _username, string memory _content, string memory _contact) public  {
    demands.push(Demand(index, _username, msg.sender, _content, _contact, 0));
    emit NewDemand(index, _username, msg.sender, _content, _contact, 0);
    index++;
  }
  
  function getDemands(uint index)   //获取所有需求 局部测试 忽略他
        public view
        returns (string[] memory,uint[] memory)
  {
        string[] memory name = new string[](index);
        uint[] memory status = new uint[](index);
        
        for (uint i = 0; i < index; i++) {
            Demand storage d =demands[i];
            name[i] = d.username;
            status[i] = d.status;
        }
        
        return (name, status);
  }

  

  function update(uint index) public {    //更新状态 0:初始 1：通过 2：捐赠中 3：捐赠完成 4：失败
    demands[index].status ++;
    emit Update(index, demands[index].status);
  }

  function rollback(uint index) public {      //测试用 可以使需求状态回到前一个位置
    demands[index].status --;
    emit Update(index, demands[index].status);
  }

  function failed(uint index) public {    //需求中断或失败
    demands[index].status = 4;
    emit Update(index, demands[index].status);
  } 


  function destroy() public{      //合约销毁
    require(admin == msg.sender,"not permit");
    selfdestruct(msg.sender);
  }

  /* function agree() public {
    coin.transfer(0x149B3Dad9ffe556717964301CED829Bf4BEa7e34,10);
  } */
}