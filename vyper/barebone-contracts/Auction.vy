# Auction params
# Beneficiary receives money from the highest bidder
beneficiary: public(address)
auctionStart: public(uint256)
auctionEnd: public(uint256)

# Current state of auction
highestBidder: public(address)
highestBid: public(uint256)

# Set to true at the end, disallows any change
ended: public(bool)

# Keep track of refunded bids so we can follow the withdraw pattern
pendingReturns: public(HashMap[address, uint256])

@external
def __init__(_beneficiary: address, _auction_start: uint256, _bidding_time: uint256):
    self.beneficiary = _beneficiary
    self.auctionStart = _auction_start
    self.auctionEnd = self.auctionStart + _bidding_time
    # end time should be in the future
    assert block.timestamp < self.auctionEnd

@external
@payable
def bid():
    # tx will be reverted if assert failed
    assert block.timestamp >= self.auctionStart
    assert block.timestamp < self.auctionEnd
    assert msg.value > self.highestBid
    # refund previous highest bidder
    self.pendingReturns[self.highestBidder] += self.highestBid # = instead of +=?
    # update highest bidder to current user
    self.highestBidder = msg.sender
    self.highestBid = msg.value

@external
def endAuction():
    assert block.timestamp >= self.auctionEnd
    assert not self.ended

    self.ended = True

    send(self.beneficiary, self.highestBid)




