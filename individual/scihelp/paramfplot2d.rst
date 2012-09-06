


paramfplot2d
============

animated plot of a 2D parametrized curve.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    paramfplot2d(f,x,theta)
    paramfplot2d(f,x,theta,flag)
    paramfplot2d(f,x,theta,flag,rect)




Arguments
~~~~~~~~~

:x real vector.
: :f function `y=f(x,t)` . f is a Scilab function or a dynamically
  linked routine (referred to as a string).
: :theta real vector (set of parameters).
: :flag string `'no'` or `'yes'`: If "yes" screen is not cleared
  between two consecutive plots.
: :rect "rectangle" [xmin, xmax, ymin, ymax] (1 x 4 real vector),
:



Description
~~~~~~~~~~~

Animated plot of the function `x`, `t`--> `f(x,t)` for
`t=theta(1),theta(2),etc`. `f` can be a either Scilab function or a
dynamically linked routine since `y=f(x,t)` is evaluated as
`y=feval(x(:),t,f)`. See `feval`_.

`f` is a mapping `x`, `t`--> `f(x,t) = R^N` valued function for `x` a
vector of `R^N` and `t` a real number.



Examples
~~~~~~~~


::

    `deff`_('y=f(x,t)','y=t*sin(x)')
    x=`linspace`_(0,2*%pi,50);theta=0:0.05:1;
    `clf`_;paramfplot2d(f,x,theta);



::

    function V=twosoliton(x, t)
      a1=6;s1=2;v1=a1^2;
      a2=4;s2=40;v2=a2^2;
      
      f1=`exp`_(-a1*(x-s1-v1*t));
      f2=`exp`_(-a2*(x-s2-v2*t));
      r=((a2-1)/(a2+a1))^2;
      V=2*(v1*f1+v2*f2+2*(a2-a1)^2*f1.*f2+r*(v2*(f1^2).*f2+v1*f1.*(f2^2)))./((1+f1+f2+r*f1.*f2)^2);
    endfunction
    x=`linspace`_(1,100,3000);
    `clf`_;paramfplot2d(twosoliton,x,0:0.05:3);




See Also
~~~~~~~~


+ `comet`_ 2D comet animated plot.
+ `plot2d`_ 2D plot
+ `feval`_ multiple evaluation
+ `fplot2d`_ 2D plot of a curve defined by a function


.. _feval: feval.html
.. _fplot2d: fplot2d.html
.. _plot2d: plot2d.html
.. _comet: comet.html


