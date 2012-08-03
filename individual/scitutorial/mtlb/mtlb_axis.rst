====
"mtlb_axis"
====

M2SCI function Last update : 12/10/2006
**mtlb_axis** - Matlab axis emulation function



Calling Sequence
~~~~~~~~~~~~~~~~

mtlb_axis(X)
mtlb_axis(st)
mtlb_axis(axeshandle, ...)
[mode,visibility,direction]=mtlb_axis('state')




Parameters
~~~~~~~~~~


+ **X** : a vector of reals ([xmin xmax ymin ymax] or [xmin xmax ymin
  ymax zmin zmax])



+ **st** : a string ('auto', 'manual', 'tight', 'ij', 'xy', 'equal',
  'square', 'vis3d', 'off', 'on')



+ **axeshandle** : handle of the current axes entity




Description
~~~~~~~~~~~

Matlab **axis** have not a Scilab equivalent function.

The function **mtlb_axis(...)** is used by **mfile2sci** to replace
**axis(...)** when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time (axis **fill** , axis **image** and axis
**normal** are not implemented). If you want to have a more efficient
code it is possible to replace **mtlb_axis** call by **get(axeshandle,
prop)** call (prop is a axes property, see ` **axis_properties** `_)

Caution: **mtlb_axis** has not to be used for hand coded functions.



Authors
~~~~~~~

****F.B.


.. _
      : ://./mtlb/../graphics/axis_properties.htm


