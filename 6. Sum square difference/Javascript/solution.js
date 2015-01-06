// The sum of the squares of the first ten natural numbers is,

// 12 + 22 + ... + 102 = 385
// The square of the sum of the first ten natural numbers is,

// (1 + 2 + ... + 10)2 = 552 = 3025
// Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

  var diffOfSumOfSquares = function(n){
    var numbers = [];
    for(var i = 1; i <= n; i++){
      numbers.push(i)
    }
    var sumOfSquares = numbers.map(function(x){ return Math.pow(x,2);}).reduce(function(x,y){return x + y;});
    var squareOfSum = Math.pow(numbers.reduce(function(x,y){return x + y;}),2);
    return squareOfSum - sumOfSquares;
  };