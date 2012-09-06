


ssprint
=======

pretty print for linear system



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ssprint(sl)
    ssprint(sl, out)




Arguments
~~~~~~~~~

:sl list ( `syslin` list)
: :out output (default value `out=%io(2)`)
:



Description
~~~~~~~~~~~

pretty print of a linear system in state-space form `sl=(A,B,C,D)
syslin` list.



Examples
~~~~~~~~


::

    a = [1 1;0 1];
    b = [0 1;1 0];
    c = [1, 1];
    d = [3, 2];
    modelC = `syslin`_('c', a, b, c, d)
    modelD = `syslin`_('d', a, b, c, d)
    ssprint(modelC)
    ssprint(modelD)




See Also
~~~~~~~~


+ `math_rendering_features_in_graphic`_ Display mathematical equations
  in Scilab graphics through the LaTeX or MathML languages.
+ `prettyprint`_ From any Scilab datatype and provide a representation
  to the TeX, LaTeX or MathML formats


.. _math_rendering_features_in_graphic: math_rendering_features_in_graphic.html
.. _prettyprint: prettyprint.html


