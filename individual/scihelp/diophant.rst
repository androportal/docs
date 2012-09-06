


diophant
========

diophantine (Bezout) equation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x,err]=diophant(p1p2,b)




Arguments
~~~~~~~~~

:p1p2 polynomial vector `p1p2 = [p1 p2]`
: :b polynomial
: :x polynomial vector [x1;x2]
:



Description
~~~~~~~~~~~

`diophant` solves the bezout equation:

`p1*x1+p2*x2=b` with `p1p2` a polynomial vector. If the equation is
not solvable

else `err=0`



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');p1=(s+3)^2;p2=(1+s);
    x1=s;x2=(2+s);
    [x,err]=diophant([p1,p2],p1*x1+p2*x2);
    p1*x1+p2*x2-p1*x(1)-p2*x(2)




