//  SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Demo {
    //this本身代表当前合约
    // address(this)代表当前合约地址
    function fn1() public view returns(address){
        return address(this); //当前的合约地址
    }
    function fn2() external view returns(address){
        return fn1(); //当fn1可见度为public时候可以用这种调用
    }
     function fn3() external view returns(address){
        return address(this); 
    }
     function fn4() external view returns(address){
        return this.fn3(); // external方法的调用 
    }

    // 合约地址、合约创建者地址，合约调用者地址
    address public owner;
    address public owner1;
    address public owner2;
    
    //只在最开始部署的时候调用一次，不会随着合约调用者的变化而变化
    //基于这个特性可实现权限认证，分配，初始token的mint
    constructor () {
        owner = address(this);//合约地址
        owner1 = msg.sender;
    }
    //谁调用，地址就变为谁
    function fn5() public view returns(address){
           return msg.sender;
    }



  //合约属性，type关键字 name creationcode runtimecode
}