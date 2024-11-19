// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract ArrayType {
    uint256[] array;

    function initArray() public {
        for (uint256 i; i < 200; ++i) {
            array.push(i);
        }
    }
}

contract ArrayTypeOptimized {
    uint16[200] array;

    function initArray() external {
        for (uint16 i; i < 200;) {
            array[i] = i;
            unchecked {
                ++i;
            }
        }
    }
}
