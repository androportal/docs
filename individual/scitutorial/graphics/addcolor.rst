====
"addcolor"
====

Scilab Function Last update : April 1993
**addcolor** - add new colors to the current colormap



Calling Sequence
~~~~~~~~~~~~~~~~

new=addcolor(c)




Parameters
~~~~~~~~~~


+ **new** : ids of the colors defined in c in the new color table.
+ **c** : matrix with 3 columns, RGB color definition.




Description
~~~~~~~~~~~

**addcolor** adds new colors given in the **c** argument to the
current colormap. **c** must be a matrix with 3 columns **[R G B]**
**R** is red component, **G** is green component, **B** is blue
component). Each entry in **c** must be a non negative number less or
equal to 1.

The ids of the new colors are returned into **new** .

If a color defined in **c** is already present in the current colormap
it is not added.



See Also
~~~~~~~~

` **colormap** `_,

.. _
      : ://./graphics/colormap.htm


