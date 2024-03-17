//  SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./hellow.sol";  //本地导入
/*
import "./hellow.sol"; 
1.直接导入：为本地导入，也是全局导入，会污染全局。
2.遇到全局冲突的时候：
import "./hellow.sol" as test；
import * as 111 from"./hellow.sol"
3，按需导入
import {symbol as aliasName, sybol2} from "filename"
*/


//import "http://github.com/xxxx" ;  //导入网络文件 “http://github.com/xxxx”
//$ npm install @openzeppelin/contracts
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol"; //导入包
// contract Hello {
//     string public message = "hello";
// }


contract Demo{
    function name() public pure returns(string memory){
           return type(Hello).name;
    }
    function CreationCode() public pure returns(bytes memory){
           return type(Hello).creationCode;
    }
    function runtimeCode() public pure returns(bytes memory){
           return type(Hello).runtimeCode;
    }
}