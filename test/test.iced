affine  = require '../lib/affine'
polygon = require '../lib/polygon'
vector  = require '../lib/vector'

#
# TODO: Put some good tests in here
#
a1 = new affine.affine2d() 
a2 = new affine.rotation  Math.PI / 4
a3 = new affine.rotation -Math.PI / 4
a4 = affine.compose a2, a3

square = polygon.factory.unitSquare()

console.log a1.transformPair 0.5, 0.5
console.log a2.transformPair 0.5, 0.5
console.log a4.transformPair 0.5, 0.5


a1.rightComposeWith a2
console.log a1
console.log "--"

square.transform a2
console.log square