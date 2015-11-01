var Parallel = require('Parallel');

var p = new Parallel([1, 2, 3, 4, 5]);
 
console.log(p.data); // prints [1, 2, 3, 4, 5] 
