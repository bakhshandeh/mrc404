//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {MRC404} from "./MRC404.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";

contract Example is MRC404 {
    constructor(address _owner) MRC404("Example", "EXM", 18, 10_000, _owner) {
        balanceOf[_owner] = totalSupply;
        setWhitelist(_owner, true);
    }

    function tokenURI(uint256 id) public pure override returns (string memory){
      return string.concat("https://example.com/token/", Strings.toString(id));
    }
}
