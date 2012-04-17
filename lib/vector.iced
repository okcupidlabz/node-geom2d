
class vector
  constructor: (v0,v1) ->
    @v0 = v0
    @v1 = v1

  copy: -> new vector @v0, @v1

  transform: (aff) ->
    t0 = aff.m00 * @v0 + aff.m01 * @v1 + aff.v0
    t1 = aff.m10 * @v0 + aff.m11 * @v1 + aff.v1
    @v0 = t0
    @v1 = t1
    @

  scale: (s) ->
    @v0 *= s
    @v1 *= s
    @


exports.vector = vector