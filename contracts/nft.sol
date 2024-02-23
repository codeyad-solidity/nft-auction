// SPDX-License-Ientifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage {
    uint256 private tokenIdCounter = 0;

    constructor() ERC721("Codeyad logo", "CDYL") {}

    function mintNFT(address to, string memory tokenURI) public {
        require(to != address(0), "mint to the zero address");

        tokenIdCounter++;
        uint256 newTokenId = tokenIdCounter;

        _mint(to, newTokenId);
        _setTokenURI(newTokenId, tokenURI);
    }
}
