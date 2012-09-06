


comparison
==========

comparison, relational operators



Calling Sequence
~~~~~~~~~~~~~~~~


::

    a==b
    a~=b or a<>b
    a<b
    a<=b
    a>b
    a>=b




Arguments
~~~~~~~~~

:a any type of variable for `a==b`, `a~=b` `a<>b` equality comparisons
  and restricted to real floating point and integer array for order
  related comparisons `a<b`, `a<=b`, `a>b`, `a>=b`.
: :b any type of variable for `a==b`, `a~=b` `a<>b` equality
  comparisons and restricted to real floating point and integer arrays
  for order related comparisons `a<b`, `a<=b`, `a>b`, `a>=b`.
:



Description
~~~~~~~~~~~

Two classes of operators have to be distinguished:

:The equality and inequality comparisons: `a==b`, `a~=b` (or
  equivalently `a<>b`). These operators apply to any type of operands.
: :The order related comparisons: `a<b`, `a<=b`, `a>b`, `a>=b`. These
  operators apply only to real floating point and integer arrays.
:

The semantics of the comparison operators also depend on the operands
types:

:With array variables like floating point and integer arrays, logical
arrays, string arrays, polynomial and rational arrays, handle arrays,
lists... the following rules apply:

    + If `a` and `b` evaluates as arrays with same types and identical
      dimensions, the comparison is performed element by element and the
      result is an array of booleans of the same size.
    + If `a` and `b` evaluates as arrays with same types, but `a` or `b`
      is a scalar, then the scalar is compared with each element of the
      other array. The result is an array of booleans of the size of the non
      scalar operand.
    + In the others cases the result is the boolean `%f`
    + If the operand data types are different but "compatible" like
      floating points and integers, then a type conversion is performed
      before the comparison.

: :With other type of operands like `function`, `libraries`, the
  result is `%t` if the objects are identical and `%f` in the other
  cases. Equality comparison between operands of incompatible data types
  returns `%f`.
:



Examples
~~~~~~~~


::

    //element wise comparisons
    (1:5)==3
    (1:5)<=4 
    (1:5)<=[1 4 2 3 0]
    1<[]
    `list`_(1,2,3)~=`list`_(1,3,3)
    
    //object wise comparisons
    (1:10)==[4,3]
    'foo'==3
    1==[]
    `list`_(1,2,3)==1
    
    `isequal`_(`list`_(1,2,3),1)
    `isequal`_(1:10,1)
    
    //comparison with type conversion
    `int32`_(1)==1
    `int32`_(1)<1.5
    `int32`_(1:5)<`int8`_(3)
    p=`poly`_(0,'s','c')
    p==0
    p/`poly`_(1,'s','c')==0




See Also
~~~~~~~~


+ `less`_ (<) less than comparison
+ `greater`_
+ `boolean`_ Scilab Objects, boolean variables and operators & | ~
+ `isequal`_ objects comparison


.. _less: less.html
.. _isequal: isequal.html
.. _greater: less.html#greater
.. _boolean: boolean.html


