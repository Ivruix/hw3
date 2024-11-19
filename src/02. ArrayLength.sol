// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract ArrayLength {
    uint256[] public myArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function callFor() public view {
        for (uint256 i; i < myArray.length; i++) {
            i++;
        }
    }
}

contract ArrayLengthOptimized {
    uint256[] public myArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function callFor() external view {
        uint256 length = myArray.length;
        unchecked {
            for (uint256 i; i < length; i++) {
                i++;
            }
        }
    }
}
