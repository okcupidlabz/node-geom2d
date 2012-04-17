affine = require './affine'
vector = require './vector'

class polygon

  constructor: (vertices) ->
    if vertices?
      @vertices = vertices
    else
      @vertices = []

  copy: ->
    new_v = []
    new_v.push v.copy() for v in @vertices
    new polygon new_v

  addVertex: (v) -> @vertices.push v

  transform: (aff) ->
    v.transform aff for v in @vertices

  getXMin: ->
    best = 0
    for v,i in @vertices
      if (i is 0) or v.v0 < best
        best = v.v0

  getXMax: ->
    best = 0
    for v,i in @vertices
      if (i is 0) or v.v0 > best
        best = v.v0

  getYMin: ->
    best = 0
    for v,i in @vertices
      if (i is 0) or v.v1 < best
        best = v.v1

  getYMax: ->
    best = 0
    for v,i in @vertices
      if (i is 0) or v.v1 > best
        best = v.v1

exports.polygon = polygon

exports.factory = 
  unitSquare: ->
    new polygon [
      new vector.vector  0.5,  0.5
      new vector.vector -0.5,  0.5
      new vector.vector -0.5, -0.5
      new vector.vector  0.5, -0.5
    ]
  unitCircleApprox: (num) ->
    radian_increment = 2.0 * Math.PI / num
    radians = 0
    p = new polygon()
    for i in [0...num]
      radians += radian_increment
      p.addVertex new vector.vector(0.5 * Math.cos(radians), 0.5 * Math.sin(radians))
    p
