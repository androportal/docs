====
"squarewave"
====

Scilab Function Last update : 17/05/2005
**squarewave** - generates a square wave with period **2*%pi**



Calling Sequence
~~~~~~~~~~~~~~~~

x=squarewave(t [,percent])




Parameters
~~~~~~~~~~


+ **t** : real vector, time discretization
+ **x** : real vector, the wave value at each time point in set
  (-1,+1)
+ **percent** : real positive scalar, the percent of the period in
  which the signal is positive. Defaut value is 50




Description
~~~~~~~~~~~

**squarewave(t)** generates the vector of the values of the square
wave with period 2*%pi at each date given in the **t** vector.

**squarewave(t,%)** generates a square wave such that **%** is the
percent of the period in which the signal is positive.



Examples
~~~~~~~~


::

    
    
    t=(0:0.1:5*%pi)';
    plot2d1('onn',t,[2*sin(t),1.5*squarewave(t),squarewave(t,10)])
     
      




See Also
~~~~~~~~

` **sin** `_,` **cos** `_,

.. _
      : ://./elementary/sin.htm
.. _
      : ://./elementary/cos.htm


