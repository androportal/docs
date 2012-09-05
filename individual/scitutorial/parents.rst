


parents
=======

( ) left and right parenthesis



Calling Sequence
~~~~~~~~~~~~~~~~


::

    (expression)
    [...]=func(e1,e2,...)
    [x1,x2,...]=(e1,e2,...)
    x(i,j)
    v(i)
    [...]=l(i)




Arguments
~~~~~~~~~

:x matrix of any possible type
: :v row or column vector of any possible type
: :l list variable
: :func any function name
: :e1,e2,... any possible type expression
:



Description
~~~~~~~~~~~

Left and right parenthesis are used to

* specify evaluation order within expressions;

* form right-hand-side functions argument list. Within multiple rhs
arguments must be separated by comma;

* select elements within vectors, matrices and lists. See help on
`extraction`_ and `insertion`_ for more precisions;

`[x1,x2,...]=(e1,e2,...)` is equivalent to first performing `%t_1 =
e1, %t_2 = e2, ...`, and then `x1 = %t_1, x2 = %t_2, ...`, where the
variables `%t_i, i = 1, 2, ...` are invisible to the user.



Examples
~~~~~~~~


::

    3^(-1)
    x=`poly`_(0,"x");
    //
    (x+10)/2
    i3=`eye`_(3,3)
    //
    a=[1 2 3;4 5 6;7 8 9],a(1,3),a([1 3],:),a(:,3)
    a(:,3)=[]
    a(1,$)=33
    a(2,[$ $-1])
    a(:,$+1)=[10;11;12]
    //
    w=`ssrand`_(2,2,2);`ssprint`_(w)
    `ssprint`_(w(:,1))
    `ss2tf`_(w(:,1)) 
    //
    l=`list`_(1,2,3,4)
    [a,b,c,d]=l(:)
    l($+1)='new'
    //
    v=%t([1 1 1 1 1])
    //
    [x,y,z]=(1,2,3)




See Also
~~~~~~~~


+ `colon`_ (:) colon operator
+ `comma`_ (,) comma; instruction, argument separator
+ `brackets`_ ([,]) left and right brackets
+ `list`_ Scilab object and list function definition
+ `extraction`_ matrix and list entry extraction
+ `insertion`_ partial variable assignation or modification


.. _brackets: brackets.html
.. _list: list.html
.. _insertion: insertion.html
.. _extraction: extraction.html
.. _colon: colon.html
.. _comma: comma.html


