====
"typeof"
====

Scilab Function Last update : April 1993
**typeof** - object type



Calling Sequence
~~~~~~~~~~~~~~~~

[t]=typeof(object)




Parameters
~~~~~~~~~~


+ **object** : Scilab object
+ **t** : string




Description
~~~~~~~~~~~

**t=typeof(object)** returns one of the following strings:

**"constant"**if object is a real or complex constant matrix
**"polynomial"**if object is a polynomial matrix
**"function"**if object is a function
**"handle"**if object is an handle
**"string"**if object is a matrix made of character strings
**"boolean"**if object is a boolean matrix
**"list"**if object is a list
**"rational"**if object is a rational matrix (transfer matrix)
**"state-space"**if object is a state-space model (see **syslin** )
**"sparse"**if object is a (real) sparse matrix.
**"boolean sparse"**if object is a boolean sparse matrix.
**if object is a tlist or mlist, t is the first**string in the first
  list entry.




Examples
~~~~~~~~


::

    
    
    typeof(1)
    typeof(poly(0,'x'))
    
    typeof(1/poly(0,'x'))
    typeof(%t)
    
    w=sprand(100,100,0.001);
    typeof(w)
    typeof(w==w)
    
    deff('y=f(x)','y=2*x');
    typeof(f)
    
    L=tlist(['V','a','b'],18,'Scilab');
    typeof(L)
     
      




See Also
~~~~~~~~

` **type** `_,` **strings** `_,` **syslin** `_,` **poly** `_,

.. _
      : ://./elementary/../strings/strings.htm
.. _
      : ://./elementary/syslin.htm
.. _
      : ://./elementary/../programming/poly.htm
.. _
      : ://./elementary/../programming/type.htm


