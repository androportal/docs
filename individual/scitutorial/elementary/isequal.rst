====
"isequal"
====

Scilab Function Last update : 2001
**isequal** - objects comparison



Calling Sequence
~~~~~~~~~~~~~~~~

t=isequal(a,b)
t=isequal(a,b,..)




Parameters
~~~~~~~~~~


+ **a, b , ... ** : any variables
+ **t** : boolean




Description
~~~~~~~~~~~

** isequal** compares its arguments. If all of them are equals
function returns ** %t** and in the other case it returns ** %f** .



Examples
~~~~~~~~


::

    
    
    a=[1 2]
    isequal(a,[1 2])
    isequal(a,1)
       
      




See Also
~~~~~~~~

` **equal** `_,` **less** `_,

.. _
      : ://./elementary/../programming/equal.htm
.. _
      : ://./elementary/../programming/less.htm


