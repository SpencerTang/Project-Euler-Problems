// The prime factors of 13195 are 5, 7, 13 and 29.

// What is the largest prime factor of the number 600851475143 ?

  var allFactors = function(n){
    var factors = [];
    for(var i = 2; i <= Math.sqrt(n); i++){
      if (n % i === 0){
        factors.push(i);
        factors.push(n/i);
      }
    }
    return factors
  };

  var isPrime = function(n){
    return (allFactors(n).length === 0) ? true : false
  };

  var allPrimeFactors = function(n){
    var primeFactors = allFactors(n).filter(function(x){
      if(isPrime(x)){
        return x;  
      }
    });
    return primeFactors;
  };

  var largestPrimeFactor = function(n){
    return allPrimeFactors(n).sort(function(x,y){return x + y;})[0];
  };
