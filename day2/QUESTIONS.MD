## 1. Who controls the ledger canister?

- Either the controller principals or other canisters
- Also the NNS

## 2. What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?

>`pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe`
>`16 Nodes`

## 3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

>(ICP staked + maturity staked) x Dissolve Delay Bonus x Age Bonus
>(10 + 0) * 1.25 x 1.12 = 14.0 voting power

## 4. What is wrong with the following code?
```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
}
```

>1. `import Nat "mo:base/nat";` should be added
>2. Declared variables `n` and `t` are redundant.
>3. Can be turned into a query call.

```
import Nat "mo:base/Nat";

actor {
 public query func convert_to_text(m : Nat) : async Text {
   Nat.toText(m);
 };
}
```

## 5. What is wrong with the following code?
```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}
```
>1. `var` is used for mutable variables. Since the function doesn't expect to change the value of `languages`, `var` can be replaced to `let`.
>2. Can be turned into a query call
>3. Remove `var` in `async [var Text]

```
actor {
  let languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public query func show_languages (language : Text) : async [Text] {
    return (languages);
  };
 
}
```

## 6. What is wrong with the following code?
```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}
```

>Missing `Import Array mo:base/Array";`

```
import Array "mo:base/Array";

actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language (new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}
```
