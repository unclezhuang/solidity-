//  SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Hello {
    //3445
 string public message = "hello World!"; //状态变量

//函数
//3409
 function fn1() public view returns(string memory){
     return message;
 }
//内存中直接返回
//737
function fn2() public pure returns(string memory){
    return "hello World!";
}
//816
function fn3() public pure returns(string memory){
    return fn2();
}
}