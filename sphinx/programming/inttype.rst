Scilab Function

Last update : April 1993

**inttype** - type integers used in integer data types

Calling Sequence
~~~~~~~~~~~~~~~~

``[i]=inttype(x)  ``

Parameters
~~~~~~~~~~

-  ``           x         ``: an matrix of integers (see int8,..)
-  ``           i         ``: integer

Description
~~~~~~~~~~~

``         inttype(x)       `` returns an integer which is the type of
the entries of ``         x       `` as following :

1 : one byte integer representation

2 : two bytes integer representation

4 : four bytes integer representation

11 : one byte unsigned integer representation

12 : two bytes unsigned integer representation

14 : four bytes unsigned integer representation

Examples
~~~~~~~~

::


    x=uint16(1:10);
    inttype(x)
     
      

See Also
~~~~~~~~

```           int8         `` <../elementary/int8.htm>`_,
