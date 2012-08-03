====
"paramfplot2d"
====

Scilab Function Last update : 16/12/2004
**paramfplot2d** - animated 2D plot, curve defined by a function



Calling Sequence
~~~~~~~~~~~~~~~~

paramfplot2d(f,x,theta)
paramfplot2d(f,x,theta,flag)
paramfplot2d(f,x,theta,flagrect)




Parameters
~~~~~~~~~~


+ **x** : real vector.
+ **f** : function **y=f(x,t)** . f is a Scilab function or a
  dynamically linked routine (referred to as a string).
+ **theta** : real vector (set of parameters).
+ **flag** : string **'no'** or **'yes'** : If "yes" screen is cleared
  between two consecutive plots.
+ **rect** : "rectangle" [xmin, xmax, ymin, ymax] (1 x 4 real vector),




Description
~~~~~~~~~~~

Animated plot of the function x-->f(x,t) for t=theta(1),theta(2),etc.
f can be a either Scilab function or a dynamically linked routine
since y=f(x,t) is evaluated as y=feval(x(:),t,f). See feval. f:
mapping x,t -> f(x,t) = **R^N** valued function for x= vector of
**R^N** and t=real number. x is a N-vector of x-values and for each t
in theta, f(x,t)=N-vector of y-values.



Examples
~~~~~~~~


::

    
    
    deff('y=f(x,t)','y=t*sin(x)')
    x=linspace(0,2*%pi,50);theta=0:0.05:1;
    paramfplot2d(f,x,theta);
     
      




See Also
~~~~~~~~

` **plot2d** `_,` **feval** `_,` **fplot2d** `_,

.. _
      : ://./graphics/fplot2d.htm
.. _
      : ://./graphics/../programming/feval.htm
.. _
      : ://./graphics/plot2d.htm


