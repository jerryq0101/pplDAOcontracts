// crowdsale contract

// contracts/SimpleCrowdsale.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.5.5;

import "@openzeppelin/contracts@2.4.0/crowdsale/Crowdsale.sol";


contract PeopleCrowdSale is Crowdsale {
    constructor(
        uint256 rate,
        address payable wallet,
        IERC20 token
    ) public Crowdsale(rate, wallet, token) {}

    function receive() public payable {}
}
