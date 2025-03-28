actor Factorial {
 
    public func factorial(n : Nat) : async Nat {
        if (n == 0) {
            return 1;
        } else {
            return n * (await factorial(n - 1));
        }
    };

 
    public func isFactorial(x : Nat) : async Bool {
        var n : Nat = 1;
        var i : Nat = 1;
        while (n < x) {
            i := i + 1;
            n := n * i;
        };
        return n == x;
    };

    public func inverseFactorial(x : Nat) : async ?Nat {
        if (x == 1) {
            return ?0; // 0! = 1
        };
        
        var n : Nat = 1;
        var i : Nat = 1;
        while (n < x) {
            i := i + 1;
            n := n * i;
        };
        
        if (n == x) {
            return ?i;
        } else {
            return null;
        };
    };
}