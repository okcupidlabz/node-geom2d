Explanation
============
A very alpha version of a JS Library for doing affine transformations and (coming soon) other simple transformations
I need for a bigger project. My first node module. Written in IcedCoffeeScript.

Browser Use
===========
```html
<script src="geom2d.js"></script>
<script>
 var affine  = require('affine');
 var polygon = require('polygon');

 var rot_left  = new affine.rotation(  Math.PI / 4);
 var rot_right = new affine.rotation( -Math.PI / 4);
 var go_big    = new affine.scaling (  2,   4);
 var go_small  = new affine.scaling (  0.5, 0.25);
 
 var do_nothing = rot_left.copy();
 do_nothing.rightComposeWith(rot_right);
 do_nothing.rightComposeWith(go_big);
 do_nothing.rightComposeWith(go_small);
 
 var square = polygon.factory.unitSquare();
 
 document.write("<h3>Square before</h3>");
 document.write(JSON.stringify(square));
 
 document.write("<h3>Square after</h3>");
 square.transform(do_nothing);
 document.write(JSON.stringify(square));
</script>
```

Node Installation
=================
```
npm install -g geom2d
```

Usage (CoffeeScript example)
============================
```coffeescript
{affine, polygon} = require 'geom2d'

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

geom2d is written in an improved version of CoffeeScript called "IcedCoffeeScript".