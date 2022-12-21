# learn-smart-contract-in-python
There are more notes in each sub directory. Overall there aren't a lot of smart contract platform / VM that can be programmed in python. Among the major blockchains, I only found 3 with somewhat support for python.

## Conclusion
Vyper is very production ready. PyTeal is also OK. If you are a python developer and want to use it in smart contract, you may try these 2.

Note, writing smart contracts is different from interacting with the chain. If you only want to interact with the chain, like send a transaction to call some contracts or read states from chain, there are many SDKs for each chains, and python SDK is usually available. Writing smart contracts is more like programming inside the chain, so the chain VM needs to understand you.

## Ethereum / EVM
### Vyper
Vyper looks a lot like python, although it does not has as much support as solidity on dev tooling, it is still very usable and easy to pick up. 

### Fe
Fe is a very new language for EVM, although it claims to be inspired by python and rust, to me it looks more like rust than python. Also because the language is too new, there isn't much tooling support and examples, so I didn't really write it.

## Algorand
Algorand smart contracts can be written in real python files using a library called PyTeal then translate to teal program that's similar to Solidity to EVM. More detail thoughts is in pyteal directory.

## Solana
There is a very early language called seahorse which looks a lot like python which can then translate to rust, which is the original language for Solana smart contracts. Seahorse is as new as Fe, there isn't much examples so I didn't dig too deep.
