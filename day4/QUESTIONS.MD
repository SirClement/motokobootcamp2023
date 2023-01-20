## 1. Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?

- No.
- 4GB

## 2. How much accounts can a unique Principal own?

- 4,294,967,295

## 3. Can we safely upgrade a canister from interface A to interface B?
Interface A
```
actor {
  public func greet(surname : Text, firstname : Text) : async Text {
    return "Hello" # firstname # surname # " !";
  };
}
```
Interface B
```
actor {
  public func greet(firstname : Text) : async Text {
    return "Hello" # firstname # " !";
  };
}
```

- Yes.
