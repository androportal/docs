Scilab Function

Last update : April 1993

**empty** - ([]) empty matrix

Description
~~~~~~~~~~~

``          []        `` denotes the empty matrix. It is uniquely
defined and has 0 row and 0 column, i.e.
``          size([]) =[0,0]        ``. The following convenient
conventions are made:

``          [] * A = A * [] = []        ``

``          [] + A = A + [] = A       ``

[ [], A] = [A, []] = A ``          inv([]) =[]        ``

``          det([])=cond([])=rcond([])=1, rank([])=0       ``

Matrix functions return ``         []       `` or an error message when
there is no obvious answer. Empty linear systems
(``          syslin       `` lists) may have several rows or columns.

Examples
~~~~~~~~

::


    s=poly(0,'s'); A = [s, s+1]; 
    A+[], A*[]
    A=rand(2,2); AA=A([],1), size(AA)
    svd([])
    w=ssrand(2,2,2); wr=[]*w; size(wr), w1=ss2tf(wr), size(w1)
     
      

See Also
~~~~~~~~

```           matrices         `` <matrices.htm>`_,
```           poly         `` <poly.htm>`_,
```           string         `` <../strings/string.htm>`_,
```           boolean         `` <boolean.htm>`_,
```           rational         `` <rational.htm>`_,
```           syslin         `` <../elementary/syslin.htm>`_,
