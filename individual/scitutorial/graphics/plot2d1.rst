====
"plot2d1"
====

Scilab Function Last update : 16/12/2004
**plot2d1** - 2D plot (logarithmic axes) (obsolete)



Calling Sequence
~~~~~~~~~~~~~~~~

plot2d1(str,x,y,[style,strf,leg,rect,nax])




Parameters
~~~~~~~~~~


+ **str** : is a string of length three **"abc"** .

    + **a** : can have the following values: **e** , **o** or **g** .

        + **e** : means "empty". Itspecifies the fact that the value of **x**
          is not used (the **x** values are supposed to be regularly spaced, ie
          1:<number of rows of **y** >). The user must anyway give a value for
          **x** , 1 for instance: **plot2d1("enn",1,y)** .
        + **o** : means "one". If there are many curves, they all have the
          same x-values: **x** is a column vector of size nl and **y** is a
          matrix of size (nl,nc). For example :
          **x=[0:0.1:2*%pi]';plot2d1("onn",x,[sin(x) cos(x)])** .
        + **g** : means "general". **x** and **y** must have the same size
          (nl,nc). Each column of **y** is plotted with respect to the
          corresponding column of **x** . **nc** curves are plotted using **nl**
          points.

    + **b, c** : can have the values **n** (normal) or **l**
      (logarithmic).

        + **b=l** : a logarithmic axis is used on the x-axis
        + **c=l** : a logarithmic axis is used on the y-axis


+ **x,y,[style,strf,leg,rect,nax]** : these arguments have the same
  meaning as in the **plot2d** function.
+ **opt_args** : these arguments have the same meaning as in the
  **plot2d** function.




Description
~~~~~~~~~~~

This function is obsolete. USE **plot2d** INSTEAD !!

**plot2d1** plots a set of 2D curves. It is the same as **plot2d** but
with one more argument **str** which enables logarithmic axis.
Moreover, it allows to specify only one column vector for **x** when
it is the same for all the curves.

By default, successive plots are superposed. To clear the previous
plot, use **clf** .

Enter the command **plot2d1()** to see a demo.



Examples
~~~~~~~~


::

    
    
    // multiple plot without giving x
    x=[0:0.1:2*%pi]';
    plot2d1("enn",1,[sin(x) sin(2*x) sin(3*x)])
    // multiple plot using only one x
    clf()
    plot2d1("onn",x,[sin(x) sin(2*x) sin(3*x)])
    // logarithmic plot
    x=[0.1:0.1:3]'; clf()
    plot2d1("oll",x,[exp(x) exp(x^2) exp(x^3)])
     
      




See Also
~~~~~~~~

` **plot2d** `_,` **plot2d2** `_,` **plot2d3** `_,` **plot2d4** `_,`
**clf** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/plot2d4.htm
.. _
      : ://./graphics/plot2d.htm
.. _
      : ://./graphics/plot2d3.htm
.. _
      : ://./graphics/plot2d2.htm
.. _
      : ://./graphics/clf.htm


