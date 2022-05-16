// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {AaveV3Avalanche} from "../libs/AaveV3Avalanche.sol";

contract AaveAddressBookTest is Test {
    function setUp() public {}

    function testFailPoolAddressProviderIs0Address() public {
        assertEq(address(AaveV3Avalanche.POOL_ADDRESSES_PROVIDER), address(0));
    }

    function testFailPoolAddressIs0Address() public {
        assertEq(address(AaveV3Avalanche.POOL), address(0));
    }

    function testFailPoolConfiguratorIs0Address() public {
        assertEq(address(AaveV3Avalanche.POOL_CONFIGURATOR), address(0));
    }

    function testFailOracleIs0Address() public {
        assertEq(address(AaveV3Avalanche.ORACLE), address(0));
    }

    function testFailPoolAdminIs0Address() public {
        assertEq(AaveV3Avalanche.POOL_ADMIN, address(0));
    }

    function testFailACLAdminIs0Address() public {
        assertEq(AaveV3Avalanche.ACL_ADMIN, address(0));
    }
}