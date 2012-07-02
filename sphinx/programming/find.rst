Scilab Function

Last update : April 1993

**find** - find indices of boolean vector or matrix true elements

Calling Sequence
~~~~~~~~~~~~~~~~

``[ii]=find(x [,nmax])  ``

``[i1,i2,..]=find(x [,nmax])  ``

Parameters
~~~~~~~~~~

-  ``           x         ``: may be a boolean vector, a boolean matrix,
   a boolean hypermatrix, a "standard" matrix or hypermatrix
-  ``           nmax         ``: an integer giving the maximum number of
   indices to return. The default value is -1 which stands for "all".
   This option can be used for efficiency, to avoid searching all
   indices.
-  ``           ii, i1, i2, ..           ``: integer vectors of indices
   or empty matrices

Description
~~~~~~~~~~~

If ``         x       `` is a boolean matrix,

``         ii=find(x)       `` returns the vector of indices
``         i       `` for which ``         x(i)       `` is "true". If
no true element found find returns an empty matrix.

``         [i1,i2,..]=find(x)       `` returns vectors of indices
``         i1       `` (for rows) and ``         i2       `` (for
columns),.. such that ``         x(i1(n),i2(n),..)       `` is "true".
If no true element found find returns empty matrices in
``         i1       ``, ``         i2       ``, ...

if ``         x       `` is a standard matrix or hypermatrix
``         find(x)       `` is interpreted as
``         find(x<>0)       ``

``         find([])       `` returns ``         []       ``

Examples
~~~~~~~~

::


    A=rand(1,20);
    w=find(A<0.4)
    A(w)
    w=find(A>100) 

    B=rand(1,20);
    w=find(B<0.4,2) //at most 2 returned values

    H=rand(4,3,5); //an hypermatrix
    [i,j,k]=find(H>0.9)  

    H(i(1),j(1),k(1))
     
      

See Also
~~~~~~~~

```           boolean         `` <boolean.htm>`_,
```           extraction         `` <extraction.htm>`_,
```           insertion         `` <insertion.htm>`_,
```           vectorfind         `` <../elementary/vectorfind.htm>`_,
