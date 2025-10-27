// contracts/PongResults.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PongResults {
    struct Match {
        address p1;
        address p2;
        address winner;
    }

    Match[] public matches;

    function record(address opponent, bool win) external {
        address w = win ? msg.sender : opponent;
        matches.push(Match(msg.sender, opponent, w));
    }
}
