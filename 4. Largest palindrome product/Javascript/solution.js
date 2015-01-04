// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

// Find the largest palindrome made from the product of two 3-digit numbers.

  var findLargestPalindrome = function(){
    var palin = 0;
    for(var i = 999; i >= 100; i--){
      for(var x = 999; x >= 100; x--){
        if(isPalindrome(x * i) && (x * i) > palin){
          palin = (x * i);
        }
      }
    }
    return palin;
  };

  var isPalindrome = function(n){
    return (n === parseInt(n.toString().split("").reverse().join("")))? true : false;
  };

