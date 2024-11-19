// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Addition {
    uint256 number = 1;

    function addition(uint256 value) public {
        number += value;
    }
}

contract Subtraction {
    uint256 number = 100;

    function subtraction(uint256 value) public {
        number -= value;
    }
}

contract Division {
    function divisionBy2(uint256 number) public pure returns (uint256) {
        return number / 2;
    }

    function divisionBy128(uint256 number) public pure returns (uint256) {
        return number / 128;
    }
}

contract AdditionOptimized {
    uint256 number = 1;

    function addition(uint256 value) external {
        unchecked {
            number += value;
        }
    }
}

contract SubtractionOptimized {
    uint256 number = 100;

    function subtraction(uint256 value) external {
        unchecked {
            number -= value;
        }
    }
}

contract DivisionOptimized {
    function divisionBy2(uint256 number) external pure returns (uint256) {
        return number >> 1;
    }

    function divisionBy128(uint256 number) external pure returns (uint256) {
        return number >> 7;
    }
}
