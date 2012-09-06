


issparse
========

determine whether input is sparse



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = issparse(S)




Arguments
~~~~~~~~~

:S a scilab object
: :res 1 is the matrix is a sparse and 0 otherwise/
:



Description
~~~~~~~~~~~

`res = issparse(S)` returns 1 if S is a sparse matrix and 0 otherwise.



Examples
~~~~~~~~


::

    sp = `sparse`_([1,2;4,5;3,10],[1,2,3]);
          if issparse(sp) == 1 then
          `disp`_("It is a sparse");
          end
          
          A = 1;
          if issparse(A) == 0 then
          `disp`_("It is not a sparse");
          end




See Also
~~~~~~~~


+ `type`_ Returns the type of a variable
+ `typeof`_ object type


.. _type: type.html
.. _typeof: typeof.html


