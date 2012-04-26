
Explanation
============
A very alpha version of a module for doing affine transformations and (coming soon) other simple transformations
I need for a bigger project. My first node module. Written in iced-coffee-script.

Installation
============
```
npm install -g geom2d
```

Usage (CoffeeScript example)
============================
```
{affine, vector, polygon} = require 'geom2d'

rot_left  = new affine.rotation  Math.PI / 4
rot_right = new affine.rotation -Math.PI / 4
go_big    = new affine.scaling   2,   4
go_small  = new affine.scaling   0.5, 0.25

# 4 compositions that should net nothing
# --------------------------------------
do_nothing = rot_left.copy()
do_nothing.rightComposeWith rot_right
do_nothing.rightComposeWith go_big
do_nothing.rightComposeWith go_small

square = polygon.factory.unitSquare()
square.transform do_nothing

console.log square
```


Contributing
============
All `.js` and `.json` files are auto-generated. Please edit the appropropriate `.iced` files and run `cake build` before committing.

geom2d is written in an improved version of CoffeeScript called "IcedCoffeeScript". If you care to edit, you'll need to npm install -g 'iced-coffee-script'. "iced" then acts as a drop-in replacement for coffeescript.


