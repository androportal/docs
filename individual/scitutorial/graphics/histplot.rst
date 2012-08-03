====
"histplot"
====

Scilab Function Last update : 17/05/2005
**histplot** - plot a histogram



Calling Sequence
~~~~~~~~~~~~~~~~

histplot(n, data, <opt_args>)
histplot(x, data, <opt_args>)




Parameters
~~~~~~~~~~


+ **n** : positive integer (number of classes)
+ **x** : increasing vector defining the classes ( **x** may have at
  least 2 components)
+ **data** : vector (datas to be analysed)
+ **<opt_args>** : This represents a sequence of statements
  **key1=value1,key2=value2** ,... where **key1** , **key2,...** can be
  any optional ` **plot2d** `_ parameter ( style,strf,leg, rect,nax,
  logflag,frameflag, axesflag ) or normalization. For this last one the
  corresponding value must be a boolean scalar (default value %t).




Description
~~~~~~~~~~~

This function plot an histogram of the **data** vector using the
classes **x** . When the number **n** of classes is provided instead
of **x** , the classes are choosen equally spaced and *x(1) =
min(data) < x(2) = x(1) + dx < ... < x(n+1) = max(data)* with *dx =
(x(n+1)-x(1))/n*.

The classes are defined by C1 = [x(1), x(2)] and Ci = ( x(i), x(i+1)]
for i >= 2. Noting Nmax the total number of **data** (Nmax =
length(data)) and Ni the number of **data** components falling in Ci,
the value of the histogram for x in Ci is equal to *Ni/(Nmax
(x(i+1)-x(i)))* when **normalization** is true (default case) and
else, simply equal to *Ni*. When normalization occurs the histogram
verifies:


::

    
                x(n+1)
               /  
               |   h(x) dx = 1,  when x(1)<=min(data) and max(data) <= x(n+1)) 
               /
               x(1)
         
        


Any ` **plot2d** `_ (optional) parameter may be provided; for instance
to plot an histogram with the color number 2 (blue if std colormap is
used) and to restrict the plot inside the rectangle [-3,3]x[0,0.5],
you may use histplot(n,data, style=2, rect=[-3,0,3,0.5]) .

Enter the command **histplot()** to see a demo.



Examples
~~~~~~~~


::

    
    // example #1: variations around an histogram of a gaussian random sample 
    d=rand(1,10000,'normal');  // the gaussian random sample
    clf();histplot(20,d)
    clf();histplot(20,d,normalization=%f)
    clf();histplot(20,d,leg='rand(1,10000,''normal'')',style=5)
    clf();histplot(20,d,leg='rand(1,10000,''normal'')',style=16, rect=[-3,0,3,0.5]); 
    
    // example #2: histogram of a binomial (B(6,0.5)) random sample
    d = grand(1000,1,"bin", 6, 0.5);
    c = linspace(-0.5,6.5,8);
    xbasc()
    subplot(2,1,1)
       histplot(c, d, style=2)
       xtitle("normalized histogram")
    subplot(2,1,2)
       histplot(c, d, normalization=%f, style=5)
       xtitle("non normalized histogram")
    
    // example #3: histogram of an exponential random sample 
    lambda = 2;
    X = grand(100000,1,"exp", 1/lambda);
    Xmax = max(X);
    xbasc()
    histplot(40, X, style=2)
    x = linspace(0,max(Xmax),100)';
    plot2d(x,lambda*exp(-lambda*x),strf="000",style=5)
    legend(["exponential random sample histogram" "exact density curve"]);
    // Note: if you use the old graphic mode use instead 
    // legends(["exponential random sample histogram" "exact density curve"],[2 5],"ur");
      




See Also
~~~~~~~~

` **hist3d** `_,` **plot2d** `_,` **dsearch** `_,

.. _
      : ://./graphics/hist3d.htm
.. _
      : ://./graphics/plot2d.htm
.. _
      : ://./graphics/../elementary/dsearch.htm


