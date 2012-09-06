


var2vec
=======

Transform a scilab variable in a vector of double



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [vec]=var2vec(var)




Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

var2vec / vec2var functions are used inside the interfacing functions
of Scilab blocks to give the possibility to the user to handle Scilab
objects with the real parameter (rpar) and with the discrete state
register (z).




::

    [vec]=var2vec(var)




Arguments
~~~~~~~~~


+ **var :** Input parameter. Can be any types of Scilab objects.
+ **vec :** Output parameter. A vector of real numbers.




Example
~~~~~~~


::

    -->a=`list`_("cos",[1.1,2])
    a  = 
    a(1)
    `cos`_   
    a(2)
    1.1    2.  
    -->b=var2vec(a)         
    b  =
    4.244-314  
    1.273-313  
    8.488-314  
    2.122-314  
    4.941-324  
    8.488-314  
    5.093-313  
    2.122-314  
    2.122-314  
    9.881-324  
    1.1        
    2.




See Also
~~~~~~~~


+ `vec2var - Transform a vector of double in a scilab variable (Scilab
  Function)`_


.. _vec2var - Transform a vector of double in a scilab variable (Scilab Function): vec2var.html
.. _xcos: xcos.html


