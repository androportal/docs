====
"sub2ind"
====

Scilab Function Last update : 13/01/2005
**sub2ind** - matrix subscript values to linear index



Calling Sequence
~~~~~~~~~~~~~~~~

I = sub2ind(dims,i1,i2,...)
J = sub2ind(dims,Mi)




Parameters
~~~~~~~~~~


+ **dims** : vector: the matrix dimensions
+ **i1,i2,...** : the subscript value arrays(same matrix shape as
  **I** )
+ **Mi** : matrix whose columns contains the subscript values.
+ **I** : the linear index array




Description
~~~~~~~~~~~

**sub2ind** is used to determine the equivalent single index
corresponding to a given set of subscript values. **I =
sub2ind(dims,i1,i2,..)** returns the linear index equivalent to the
row, column, ... subscripts in the arrays **i1** , **i2** ,.. for an
matrix of size **dims** . In this case **i1** , **i2** ,.. must have
the same shape and the result **I** has the same matrix shape. **I =
sub2ind(dims,Mi)** returns the linear index equivalent to the
subscripts in the columns of the matrix **Mi** for a matrix of size
**dims** . in this case **I** is a column vector



Examples
~~~~~~~~


::

    
    
    i=[1 2 1 1 2 1 1];
    j=[1 2 3 1 2 3 3];
    k=[1 2 1 2 1 2 1];
    sub2ind([2,3,2],i,j,k)
    
    sub2ind([2,3,2],[i',j',k'])
    </EXAMPLE>  
      




See Also
~~~~~~~~

` **ind2sub** `_,` **extraction** `_,` **insertion** `_,



Author
~~~~~~

Serge Steer, INRIA

.. _
      : ://./elementary/ind2sub.htm
.. _
      : ://./elementary/../programming/insertion.htm
.. _
      : ://./elementary/../programming/extraction.htm


