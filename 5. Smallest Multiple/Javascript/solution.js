# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

var lowestCommonMultiple = function(n){
  var primeNumbers = [];
  var distinctPrimes;
  for(var i = 2; i < n; i++){
    if(isPrime(i)){
      primeNumbers.push(i)
    }
  }
  distinctPrimes = primeNumbers.map(function(x){
    var exponent = 1;
    var prime = x;
    while(prime < n){
      if(Math.pow(x,exponent) > prime) {
        prime = Math.pow(x,exponent)
      }
      exponent += 1
    }
    return prime / x;
  })
  return distinctPrimes.reduce(function(x,y){return x * y;})
};

var allFactors = function(n){
  var factors = [];
  for(var i = 2; i <= Math.sqrt(n); i++){
    if(n % i === 0){
      factors.push(i)
      factors.push(n / i)
    }
  }
  return factors;
};

var isPrime = function(n){
  return (allFactors(n).length === 0) ? true : false;
};