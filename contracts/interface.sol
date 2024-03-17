// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//此合约为接口介绍
/*
当两个合约中有相同的方法时候，可以通过接口来做中转掉用不同合约中的同一方法
*/
contract Cat {
   uint256 public age;
   function eat() public returns (string memory){
    age++;
    return"cat eat fish";
   }
   function sleep1() public pure returns (string memory){
    return "sleep1";
   }
}

contract Dog {
    uint256 public age;
    function eat() public returns (string memory){
        age += 2;
        return "dog miss you";   
    }
     function sleep2() public pure returns (string memory){
    return "sleep2";
   }
}
interface AnimalEat{
    function eat() external returns (string memory);
}
//在animal合约中，只要输入cat或者dog的合约地址，就可以通过接口来调用方法
contract Animal {
    function test(address _addr) external returns (string memory){
        AnimalEat general = AnimalEat(_addr);
        return general.eat();
    }
    function interfaceID() external pure returns(bytes4){
        return type(AnimalEat).interfaceId;
        //为接口4字节的一个签名去接口bytes32前4个字节的值
    }
      //库的用法之一：简答封装
      function testA() external pure returns(uint256){
        return Set.test();
    }
}

//库的介绍
//可以将代码中常用的一些计算以及方法封装在库中
library Set{
    struct Data {mapping(uint => bool) flags;}
    function test() external pure returns(uint256){
        return 111;
    }
}