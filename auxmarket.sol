pragma soloidity ^0.5.0;

contract aux{
  constructor{
    function aux_token(uint initialsupply){
      balanceOf(msg.sender) = initialsupply;
      
    }
    function transfer( address_to, uint_value) {
    if (balanceOf[msg.sender] >_value  )  throw ;
    if (balanceOf[_to] + _value < balanceOf[_to] throw ; )
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
    }
  }

  function  query {
    /// @notice Escrow dot for oracle request
    /// @dev Called by user contract
    function query(
        address provider,           // data provider address
        string userQuery,           // query string
        bytes32 endpoint,           // endpoint specifier ala 'smart_contract'
        bytes32[] endpointParams    // endpoint-specific params
        )
        external
        returns (uint256 id)
    {
        uint256 dots = bondage.getBoundDots(msg.sender, provider, endpoint);
      
        if (dots >= 1) {
            //enough dots
            bondage.escrowDots(msg.sender, provider, endpoint, 1);

            id = uint256(keccak256(abi.encodePacked(block.number, now, userQuery, msg.sender, provider)));

            createQuery(id, provider, msg.sender, endpoint, userQuery, onchainSubscriber);
            if (onchainProvider) {
                OnChainProvider(provider).receive(id, userQuery, endpoint, endpointParams, onchainSubscriber);
            } else{
                emit Incoming(id, provider, msg.sender, userQuery, endpoint, endpointParams, onchainSubscriber);
            }
        } else { // NOT ENOUGH DOTS
            revert("Subscriber does not have any dots.");
        }
}
  }
  function (suscriber   address providerAddress,   //
        bytes32 endpoint,          //
        bytes32[] endpointParams,  //
        uint256 publicKey,         // Public key of the purchaser
        uint64 blocks              //
    )
        public
    {
        // Must be atleast one block
        require(blocks > 0, "Error: Must be at least one block");

        // Can't reinitiate a currently active contract
        require(getDots(providerAddress, msg.sender, endpoint) == 0, "Error: Cannot reinstantiate a currently active contract");

        // Escrow the necessary amount of dots
        bondage.escrowDots(msg.sender, providerAddress, endpoint, blocks);

        // Initiate the subscription struct
        setSubscription(
            providerAddress,
            msg.sender,
            endpoint,
            blocks,
            uint96(block.number),
            uint96(block.number) + uint96(blocks)
        );

        emit DataPurchase(
            providerAddress,
            msg.sender,
            publicKey,
            blocks,
            endpointParams,
            
        );
}
function market_fee(uint _fee, amount, ZapAwarded) private returns(uint){
  if(tokenprice <= ZapAwarded ){
    0.05 * tokenprice = fee ;
    amount - fee = subtrac
    returns fee;
  }
  else 
  returns ZapAwarded ;
}
function 
}
