


comet
=====

2D comet animated plot.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    comet(y)



::

    comet(x,y)



::

    comet(x,fun)



::

    comet(x,y,p)



::

    comet(x,fun,p)



::

    comet(...,"colors",c)




Parameters
~~~~~~~~~~

:x a real vector or matrix. If omitted, it is assumed to be the vector
  `1:ny` where `ny` is the number of curve points (see below).
: :y a real vector or matrix of length.
: :p a real scalar in the interval `[0 1[`. Default value is 0.1.
: :fun a scilab function with calling sequence `y=fun(x)`. `fun` can
  also be a polynomial or a rational fraction.
: :c a vector of `ny` color index.
:



Description
~~~~~~~~~~~

If `(x,y)` are two vectors with the same number of elements, this
function draws a 2D comet animated plot showing the progession of the
curve `(x(1:k),y(1:k))` for `k` varying from `1` to `size(x,'*')`.

The plot is made of three parts:
:ahead mark that shows the current `(x(i),y(i))` position.
: :abody that shows the trailing curve that follows the head: the
  `(x(i-k:i),y(i-k:i)`) part of the curve.
: :atail that shows the `(x(1:i-k),y(1:i-k))` part of the curve.
:

`comet(x,fun,...)` is equivalent to `comet(x,feval(x,fun),...)`

`comet(...,p)` can be used to set the relative length of the body. `k`
is defined as `k = round(p*ny)`.

if `y` is a matrix then animated curves are drawn for each pair
`(x,y(:,l))`. in this case `ny` is the number of rows of `y`.

if `x` and `y` are matrices with identical sizes then animated curves
are drawn for each pair `(x(:,l),y(:,l))`. in this case `ny` is the
number of rows of `x`and `y`.

`comet(...,"colors",c)` can be used to set the colors of each curves.




Examples
~~~~~~~~


::

    t = `linspace`_(0,10*%pi,500);
    `clf`_();`set`_(`gca`_(),"isoview","on"); //set isoview axes
    comet(t.*`sin`_(t),t.*`cos`_(t))



::

    t = `linspace`_(0,10*%pi,500)';
    `clf`_();comet(t.*`sin`_(t),[t.*`sin`_(2*t) t.*`sin`_(3*t)])



::

    function y=traj(x),y=1.5*`sin`_(x^2),endfunction
    `clf`_();comet(`linspace`_(0,5,500),traj)



::

    `clf`_();comet(`linspace`_(-2,4,500),(%s-3)/(%s^3+2*%s^2+1))




See Also
~~~~~~~~


+ `comet3d`_
+ `paramfplot2d`_




History
~~~~~~~
Version Description 5.3.2 Function comet introduced.
.. _paramfplot2d: paramfplot2d.html
.. _comet3d: comet3d.html


