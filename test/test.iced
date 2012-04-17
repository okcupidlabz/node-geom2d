a2d = require '../affine2d.iced'

#
# TODO: Put some good tests in here
#
a1 = new a2d.affine2d() 
a2 = new a2d.rotation  Math.PI / 4
a3 = new a2d.rotation -Math.PI / 4
a4 = a2d.compose a2, a3

console.log a1.transform 0.5, 0.5
console.log a2.transform 0.5, 0.5
console.log a4.transform 0.5, 0.5

a1.rightComposeWith a2
console.log a1
console.log "--"