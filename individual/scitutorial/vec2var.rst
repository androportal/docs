


vec2var
=======

Transform a vector of double in a scilab variable



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [var]=vec2var(vec)




Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

var2vec / vec2var functions are used inside the interfacing functions
of Scilab blocks to give the possibility to the user to handle Scilab
objects with the register of real parameters (rpar) and with the
discrete state register (z).




::

    [var]=vec2var(vec)




Arguments
~~~~~~~~~


+ **vec :** Input parameter. A vector of real numbers.
+ **var :** Output parameter. Can be any types of Scilab objects.




Example
~~~~~~~


::

    -->a=`list`_("cos",[1.1,2])
    a  = 
    a(1)
    `cos`_   
    a(2)
    1.1    2.  
    -->b=`var2vec`_(a)         
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
    -->c=vec2var(b)
    c  =
    c(1)
    `cos`_   
    c(2)
    1.1    2.




See Also
~~~~~~~~


+ `var2vec - Transform a scilab variable in a vector of double (Scilab
  Function)`_


.. _var2vec - Transform a scilab variable in a vector of double (Scilab Function): var2vec.html
.. _xcos: xcos.html


