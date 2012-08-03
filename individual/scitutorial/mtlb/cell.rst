====
"cell"
====

Scilab Function Last update : 29/05/2006
**cell** - create an empty cell



Calling Sequence
~~~~~~~~~~~~~~~~

c=cell(m1,m2,...)
c=cell(x)
c=cell()




Parameters
~~~~~~~~~~


+ **x** : integers vector
+ **m1, m2,..** : integers




Description
~~~~~~~~~~~

Returns an empty cell.

**cell(m1)** returns an empty **(m1,m1)** cell
**cell(m1,m2)** returns an empty **(m1,m2) ** cell
**cell(m1,m2,..,mn)** : creates an empty **(m1,m2,..,mn)** cell.
**cell(x)** returns an empty cell array with : the first dimension of
  the cell array is **x(1)** , the second dimension is **x(2), ...**


Note that **cell(x) ** is not the same size that **x**

**cell()** is eqivalent to **cell(0)**



Examples
~~~~~~~~


::

    
    
    a=cell(3)
    b=cell(3,1)
    c=cell([2,3,4])
    
    // assigning cell entries
    b=cell(3,1);
    // assigning a single entry
    b(1).entries=1:3
    b(2).entries='Scilab'
    b(3).entries=poly(1:3,'s')
    
    // assigning sub-cells
    X=cell(3,2);
    X(:,1)=b
    
    //sub-cell reference
    b(1) // result is a cell
    b(1:2) 
    
    b(1).entries //result is an array
    
    
      




See Also
~~~~~~~~

` **eye** `_,` **ones** `_,` **zeros** `_,

.. _
      : ://./mtlb/../elementary/ones.htm
.. _
      : ://./mtlb/../elementary/zeros.htm
.. _
      : ://./mtlb/../elementary/eye.htm


