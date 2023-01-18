## 1. How much is the current memory capacity of a canister?

>Stable Memory: 48GB
Source: https://forum.dfinity.org/t/increased-canister-smart-contract-memory/6148/140?u=clement
>Heap Memory: 4GB

## 2. What is the issue with the following code sample?
```
actor {
  let counter : Nat = 0;

  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```
**Issue(s):**
>1. `let` variable declarations are immutable, and does not match the body of the function which expects to reassign the value of `counter`.

**Solution:**
>1. Replace `let` with `var`.

## 3. What is the issue with the following code sample?
```
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```
**Issue(s):**
>1. The function `change_message()` updates the state of the canister and does not match with `public query func`
>2. `return` statement of `see_message()` is redundant.

**Solutions:
>1. Remove `query` statement.
>2. Remove `return` statement.

## 4. False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.

>False
