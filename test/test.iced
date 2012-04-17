affine = require '../lib/affine'

#
# TODO: Put some good tests in here
#
a1 = new affine.affine2d() 
a2 = new affine.rotation  Math.PI / 4
a3 = new affine.rotation -Math.PI / 4
a4 = affine.compose a2, a3

console.log a1.transform 0.5, 0.5
console.log a2.transform 0.5, 0.5
console.log a4.transform 0.5, 0.5

a1.rightComposeWith a2
console.log a1
console.log "--"