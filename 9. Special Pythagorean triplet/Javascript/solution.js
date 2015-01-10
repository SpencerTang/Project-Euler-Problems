// A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

// a2 + b2 = c2
// For example, 32 + 42 = 9 + 16 = 25 = 52.

// There exists exactly one Pythagorean triplet for which a + b + c = 1000.
// Find the product abc.

  var findPythagorean = function(){
    var a = 1;
    var b = 1; 
    var c;

    for(var i = 1; i <= 1000; i++){
      for(var n = 1; n <= 1000; n++){
        if((i + n) + Math.sqrt(Math.pow(i,2) + Math.pow(n,2)) === 1000){
          a = i;
          b = n;
        }
      }
    }
    c = Math.sqrt(Math.pow(a,2) + Math.pow(b,2));
    return (a * b * c);
  };