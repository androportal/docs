


locate
======

mouse selection of a set of points



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x=locate([n,flag])




Arguments
~~~~~~~~~

:x matrix of size (2,n1). n1=n if the parameter n is given.
: :n,flag integer values.
:



Description
~~~~~~~~~~~

`locate` is used to get the coordinates of one or more points selected
with the mouse in a graphics window. The coordinates are given using
the current graphics scale.

If n>0, n points are selected and their coordinates are returned in
the matrix `x`.

If n<=0, points are selected until the user clicks with the left
button of the mouse which stands for stop. The last point (clicked
with the left button) is not returned.

x=locate() is the same as `x=locate(-1)`.

If `flag=1` a cross is drawn at the points where the mouse is clicked.



See Also
~~~~~~~~


+ `xclick`_ Wait for a mouse click or an event in a graphic window.
+ `xgetmouse`_ get the mouse events and current position


.. _xgetmouse: xgetmouse.html
.. _xclick: xclick.html


