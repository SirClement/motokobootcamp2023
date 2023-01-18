actor {
  var n : Nat = 0;
  var m : Nat = 0;

//1. Write a function multiply that takes two natural numbers and returns the product.
  //multiply(n : Nat, m : Nat) -> async Nat
  
  public query func multiply( n : Nat, m: Nat) : async Nat {
    return (n*m);
  };

//2. Write a function volume that takes a natural number n and returns the volume of a cube with side length n.
  //volume(n : Nat) -> async Nat

  public query func volume(n : Nat) : async Nat {
  return (n * n * n);
  };

//3. Write a function hours_to_minutes that takes a number of hours n and returns the number of minutes.
  //hours_to_minutes(n : Nat) -> async Nat

  public query func hours_to_minutes(h : Nat) : async Nat {
    return h * 60;
  };

//4.Write two functions set_counter & get_counter .
//set_counter sets the value of the counter to n.
  //set_counter(n : Nat) -> async ()
  
  public query func set_counter(fresh_n : Nat) : async Nat {
    n := fresh_n;
    return n;
  };

  public query func get_counter() : async Nat {
    return n;
  };

//5. Write a function test_divide that takes two natural numbers n and m and returns a boolean indicating if n divides m.
  //test_divide(n: Nat, m : Nat) -> async Bool

  public query func test_divide(n : Nat, m : Nat) : async Bool {
    return m % n == 0;
  };

//6. Write a function is_even that takes a natural number n and returns a boolean indicating if n is even.
  //is_even(n : Nat) -> async Bool 

  public query func is_even(n : Nat) : async Bool {
    return n % 2 == 0;
  };

}
