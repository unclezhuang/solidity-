//  SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Netspec 描述注释

/// @tittle 一个简单的数据存储演示

/// @author zhuang

/// @notice 演示合约
/// @dev 提供了存储方法和获取方法
/// @custom:custom 自定义的描述/这是实验的测试合约

contract TinyStorage {
    //data
    uint256 storedData;

    //set
    /// 存储 `_x`。
    /// @param _x 要存储的新值
    /// @dev 将数字存储在状态变量 `storedData` 中
 function set(uint256 _x) public {
    storedData = _x;
 }
    //get
    /// @notice 返回储存的值
    /// @return 储存值
    /// @dev 检索状态变量 storedData 的值
function get() public view returns(uint256){
    return storedData;
}
}