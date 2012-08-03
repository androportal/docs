====
"graduate"
====

Scilab Function Last update : November 1993
**graduate** - pretty axis graduations



Calling Sequence
~~~~~~~~~~~~~~~~

[xi,xa,np]=graduate( xmi, xma,n1,n2)
[xi,xa,np]=graduate( xmi, xma)




Parameters
~~~~~~~~~~


+ **xmi,xma** : real scalars
+ **n1, n2** : integers with default values 3,10
+ **xi, xa** :real scalars
+ **np** : integer




Description
~~~~~~~~~~~

graduate looks for the minimum interval **[xi,xa]** and a number of
tics **np** such that:

**xi <= xmi <= xma <= xa**

**xa - xi / np = k(10^n)** , **k** in **[1 3 5]** for an integer **n**

**n1 < np < n2**



Examples
~~~~~~~~


::

    
    
      y=(0:0.33:145.78)';
      xbasc();plot2d1('enn',0,y)
      [ymn,ymx,np]=graduate(mini(y),maxi(y))
      rect=[1,ymn,prod(size(y)),ymx];
      xbasc();plot2d1('enn',0,y,1,'011',' ',rect,[10,3,10,np])
     
      




See Also
~~~~~~~~

` **xsetech** `_,` **plot2d** `_,



Author
~~~~~~

S. Steer 1992;

.. _
      : ://./graphics/xsetech.htm
.. _
      : ://./graphics/plot2d.htm


