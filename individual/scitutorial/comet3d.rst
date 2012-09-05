


comet3d
=======

3D comet animated plot.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    comet3d(z)



::

    comet3d(x,y,z)



::

    comet3d(x,y,fun)



::

    comet3d(x,y,z,p)



::

    comet3d(x,y,fun,p)



::

    comet3d(...,"colors",c)




Parameters
~~~~~~~~~~

:x a real vector or matrix. If omitted, it is assumed to be the vector
  `1:nz` where `nz` is the number of curve points given by the `z`
  parameter.
: :y a real vector or matrix. If omitted, it is assumed to be the
  vector `1:nz` where `nz` is the number of curve points given by the
  `z` parameter.
: :z a real vector of length `nz` or a matrix with `nz` rows.
: :p a real scalar in the interval `[0 1[`. Default value is 0.1.
: :fun a scilab function with calling sequence `z=fun(x,y)`.
: :c a vector of `ny` color index.
:



Description
~~~~~~~~~~~

If `(x,y,z)` are three vectors with the same number of elements, this
function draws a 3D comet animated plot. The plot is made of three
parts:
:ahead mark that shows the current `(x(i),y(i),z(i))` position.
: :abody that shows the trailing curve that follows the head: the
  `(x(i-k:i),y(i-k:i),z(i-k:i))`) part of the curve.
: :atail that shows the `(x(1:i-k),y(1:i-k),z(1:i-k))` part of the
  curve.
:

if `z` is a matrix and `(x,y)` are vectors then animated curves are
drawn for each triple `(x,y,z(:,l))`. in this case `nz` is the number
of rows of `z`.

if `x,y,z` are matrices with the same dimensions then animated curves
are drawn for each triple `(x(:,l),y(:,l),z(:,l))`.

`comet3d(x,y,fun,...)` computes the `z` vector as
`z(i)=fun(x(i),y(i))`

`comet3d(...,p)` can be used to set the relative length of the body.
`k` is defined as `k = round(p*nz)`.




Examples
~~~~~~~~


::

    t = `linspace`_(-%pi,%pi,500);
    `clf`_();comet3d(`sin`_(5*t),`sin`_(t),t^2)



::

    t = `linspace`_(-%pi,%pi,500)';
    `clf`_();comet3d(`sin`_(5*t),`sin`_(t),[t^2,`ones`_(t)])



::

    t = `linspace`_(-%pi,%pi,500)';
    function z=traj(x, y),z=1.5*`sin`_(x^2)*`cos`_(y),endfunction
    `clf`_();comet3d(`cos`_(t),`sin`_(t),traj)




See Also
~~~~~~~~


+ `comet`_




History
~~~~~~~
Version Description 5.3.2 Function comet3d introduced.
.. _comet: comet.html


