//  SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

// Deployed at Whitelist Contract Address: 0x285d2286faF860242846e275f49232b55C2C2319

contract whitelist {
    // Max number of whitelisted addresses allowed
    uint8 public maxWhitelistedAddresses;

    // Create a mapping of whitelistedAddresses
    // If an address is whitelisted, we would set it to true.
    // It is false by default for all other addresses.
    mapping(address => bool) public whitelistedAddresses;

    // numAddressesWhitelisted would be used to keep track of how many addresses have been whitelisted.
    uint8 public numAddressesWhitelisted;

    // Setting the Max number of whitelisted addresses
    // User will put the value at the time of deployment
    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    /**
     * addAddressToWhitelist - This function adds the address of the sender to the whitelist.
     */
    function addAddressToWhitelist() public {
        // Check if the user has already been whitelisted
        require(
            !whitelistedAddresses[msg.sender],
            "Sender has already been whitelisted"
        );

        // Check if the numAddressesWhitelisted < maxWhitelistedAddresses, if not then throw an error
        require(
            numAddressesWhitelisted < maxWhitelistedAddresses,
            "More addresses can't be added, limit reached"
        );

        // Add the address which called the function to the whitelistedAddress array
        whitelistedAddresses[msg.sender] = true;

        // Increase the number of whitelisted addresses
        numAddressesWhitelisted += 1;
    }
}
