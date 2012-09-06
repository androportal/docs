


empty
=====

([]) empty matrix



Description
~~~~~~~~~~~

`[]` denotes the empty matrix. It is uniquely defined and has 0 row
and 0 column, i.e. `size([]) =[0,0]`. The following convenient
conventions are made:

`[] * A = A * [] = []`

`[] + A = A + [] = A`

`[ [], A] = [A, []] = A` `inv([]) =[]`

`det([])=cond([])=rcond([])=1, rank([])=0`

Matrix functions return `[]` or an error message when there is no
obvious answer. Empty linear systems ( `syslin` lists) may have
several rows or columns.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    A = [s, s+1]; 
    A+[], A*[]
    A=`rand`_(2,2);
    AA=A([],1), `size`_(AA)
    `svd`_([])
    w=`ssrand`_(2,2,2);
    wr=[]*w;
    `size`_(wr), w1=`ss2tf`_(wr), `size`_(w1)




See Also
~~~~~~~~


+ `matrices`_ Scilab object, matrices in Scilab
+ `poly`_ polynomial definition
+ `string`_ conversion to string
+ `boolean`_ Scilab Objects, boolean variables and operators & | ~
+ `rational`_ Scilab objects, rational in Scilab
+ `syslin`_ linear system definition


.. _boolean: boolean.html
.. _poly: poly.html
.. _string: string.html
.. _matrices: matrices.html
.. _syslin: syslin.html
.. _rational: rational.html


