fs = require 'fs'

obj = 
  name:         "geom2d"
  description:  """A library for basic 2D affine transformations; will likely add other little items"""
  version:      "0.0.4"
  directories:  {"lib" : "./lib"}
  main:         "index.js"
  author:       "Chris Coyne <ccoyne77@gmail.com>"
  repository:
    type: "git"
    url:  "http://github.com/okcupid/node-geom2d"
  devDependencies:
    "iced-coffee-script" : "1.3.1a"
    "stitch" : "0.3.3"
  scripts:
    "preinstall" : "cake build"
  licenses: [
    {
      type: "MIT"
      url:  "http://github.com/okcupid/node-geom2d/raw/master/LICENSE"
    }
  ]

await fs.writeFile './package.json', JSON.stringify(obj, null, " "), defer err, res
