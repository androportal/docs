


left
====

([) left bracket



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [a11,a12,...;a21,a22,...;...]
    [s1,s2,...]=func(...)




Arguments
~~~~~~~~~

:a11,a12,... matrix of any compatibles types with compatibles
  dimensions s1,s2,... : any possible variable name
:



Description
~~~~~~~~~~~

Left and right brackets are used for vector and matrix concatenation.
These symbols are also used to denote a multiple left-hand-side for a
function call

Inside concatenation brackets blank or comma characters mean "column
concatenation", semicolon and carriage-return mean "row
concatenation".

Note : to avoid confusions it is safer to use comma instead of blank
to separate columns.

Within multiple lhs brackets variable names must be separated by
comma.



Examples
~~~~~~~~


::

    [6.9,9.64; `sqrt`_(-1) 0]
    [1 +%i  2 -%i  3]
    []
    ['this is';'a string';'vector']
    s=`poly`_(0,'s');[1/s,2/s]
    [`tf2ss`_(1/s),`tf2ss`_(2/s)]
    
    [u,s]=`schur`_(`rand`_(3,3))




See Also
~~~~~~~~


+ `comma`_ (,) comma; instruction, argument separator
+ `semicolon`_ (;) ending expression and row separator


.. _semicolon: semicolon.html
.. _comma: comma.html


