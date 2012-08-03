====
"sylv"
====

Scilab Function Last update : April 1993
**sylv** - Sylvester equation.



Calling Sequence
~~~~~~~~~~~~~~~~

sylv(A,B,C,flag)




Parameters
~~~~~~~~~~


+ **A,B,C** : three real matrices of appropriate dimensions.
+ **flag** character string ( **'c'** or **'d'** )




Description
~~~~~~~~~~~

**X = sylv(A,B,C,'c')** computes **X** , solution of the "continuous
time" Sylvester equation


::

    
    
    A*X+X*B=C 
       
        


**X=sylv(A,B,C,'d')** computes **X** , solution of the "discrete time"
Sylvester equation


::

    
    
    A*X*B-X=C
       
        




Examples
~~~~~~~~


::

    
    
    A=rand(4,4);C=rand(4,3);B=rand(3,3);
    X = sylv(A,B,C,'c');
    norm(A*X+X*B-C)
    X=sylv(A,B,C,'d') 
    norm(A*X*B-X-C)
     
      




See Also
~~~~~~~~

` **lyap** `_,

.. _
      : ://./linear/lyap.htm


