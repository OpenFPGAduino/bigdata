var Parallel = require('paralleljs/lib/paralleljs');
var dnode    = require('dnode');

var server = dnode(function (remote, conn) {
    this.zing = function (n, cb) { cb(n * 100) };
});
server.listen(7070);

//var p = new Parallel([1, 2, 3, 4, 5]);
 
//console.log(p.data); // prints [1, 2, 3, 4, 5] 
