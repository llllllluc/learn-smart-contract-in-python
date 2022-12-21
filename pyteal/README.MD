# Contract state
Algorand contracts' state usually have 2 parts:
1. global state that contains info like remaining token reserve, total issuance.
2. local state that links to an address which contains info like token balance of this account.

# PyTeal
PyTeal is essentially a python library so you can write python program (although it's not like normal python program at all cause you need to use algorand operations like Cond, Seq, Int, Bytes all the time) which can be translated to teal program. Then these teal programs can be compiled to AVM bytecodes then run in Algorand nodes.

# Example
I wrote the `asset.py` sample program which can mint / transfer the token following the PyTeal [doc](https://pyteal.readthedocs.io/en/stable/examples.html#asset) line by line, however since i have trouble installing PyTeal lib because of below error, I just hand write the code without auto complete and type checking.
```
ERROR: Could not build wheels for pynacl which use PEP 517 and cannot be installed directly
```

# Conclusion
Overall it was fun and the code sample makes sense. I'll dig into the developer challenge later!
