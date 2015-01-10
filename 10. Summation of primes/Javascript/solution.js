// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

// Find the sum of all the primes below two million.

  var sumOfAllPrimes = function(n){
    var sum = 0;
    for(var i = 2; i <= n; i+=){
      if(isPrime(i)){
        sum += i
      }
    }
    return sum;
  };

  var isPrime = function(n){
    for(var i = 2; i <= Math.sqrt(n); i++){
      if (n % i === 0){
        return false;
      }
    }
    return true;
  };

