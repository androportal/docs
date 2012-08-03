====
"mtlb_sparse"
====

Scilab Function Last update : January 1999
**mtlb_sparse** - convert sparse matrix



Calling Sequence
~~~~~~~~~~~~~~~~

Y=mtlb_sparse(X)




Parameters
~~~~~~~~~~


+ **X** : sparse matrix
+ **Y** : sparse matrix in Matlab format




Description
~~~~~~~~~~~

**Y=mtlb_sparse(X)** is used to convert **X** , a Scilab sparse
matrix, to Matlab format. **Y** is the a variable with type 7, i.e.
**type(Y)** is equal to 7. This function should be used in mexfiles (a
Matlab mexfile containing sparse matrices can be used only if the
Scilab sparse matrices are converted to that format). The functions
**full** and **spget** work with this format.

Other operations and functions using this format can be overloaded
with Scilab functions using the prefix "%msp". For instance the
function **%msp_p(x)** (see SCIDIR/macros/percent directory) is used
to display such "type 7" objects.



Examples
~~~~~~~~


::

    
    
    X=sparse(rand(2,2)); Y=mtlb_sparse(X);
    Y, full(Y), [ij,v,mn]=spget(Y)
     
      




See Also
~~~~~~~~

` **full** `_,` **spget** `_,

.. _
      : ://./elementary/full.htm
.. _
      : ://./elementary/spget.htm


