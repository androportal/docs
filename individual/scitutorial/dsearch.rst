


dsearch
=======

search in ordered sets



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [ind, occ, info] = dsearch(X, s )
    [ind, occ, info] = dsearch(X, s , ch )




Arguments
~~~~~~~~~

:X a mx-by-nx matrix of doubles, the entries to locate.
: :s a n-by-1 or 1-by-n matrix of doubles, the intervals (if ch="c")
  or the set (if ch="d"). The values in s must be in strictly increasing
  order: s(1) < s(2) < ... < s(n)
: :ch a 1-by-1 matrix of strings, the type of search (default ch="c").
  Available values are ch="c" or ch="d".
: :ind a mx-by-nx matrix of doubles. The location of the X values in
  the intervals or the set defined by `s`.
: :occ If ch="c", a (n-1)-by-1 or 1-by-(n-1) of doubles. If ch="d", a
  n-by-1 or 1-by-n of doubles. The number of entries from X in the
  intervals s.
: :info a 1-by-1 matrix of doubles. The number of X entries which are
  not in `s`.
:



Description
~~~~~~~~~~~

This function locates the indices of the entries in X in the intervals
or the set defined by s.

If `ch="c"` (default), we consider the intervals `I1 = [s(1), s(2)]`
and `Ik = (s(k), s(k+1)]` for `k=2,...,n-1`. Notice that the bounds of
`I1` are closed, while the left bounds of `I2`, ..., `In` are opened.
For each entry `X(i)`, we search the interval `Ik` which contains
X(i), i.e. we search k such that `s(k)<X(i)<=s(k+1)`.

More precisely,

:ind(i) is k such that `Ik` contains X(i) or 0 if X(i) is not in any
  interval `Ik`.
: :occ(k) is the number of components of `X` which are in `Ik`
: :info is the number of components of `X` which are not in any
  interval `Ik`.
:

If `ch="d"`, we consider the set {s(1),s(2),...,s(n)}. For each X(i),
search k such that X(i)=s(k).

More precisely,

:ind(i) is k if X(i)=s(k) or 0 if X(i) is not in s.
: :occ(k) is the number of entries in X equal to s(k)
: :info is the number of entries in X which are not in the set
  {s(1),...,s(n)}.
:

The ch="c" option can be used to compute the empirical histogram of a
function given a dataset. The ch="d" option can be used to compute the
entries in X which are present in the set s.



Examples
~~~~~~~~

In the following example, we consider 3 intervals `I1=[5,11]`,
`I2=(11,15]` and `I3=(15,20]`. We are looking for the location of the
entries of `X=[11 13 1 7 5 2 9]` in these intervals.


::

    [ind, occ, info] = dsearch([11 13 1 7 5 2 9], [5 11 15 20])


The previous example produces the following output.


::

     
    -->[ind, occ, info] = dsearch([11 13 1 7 5 2 9], [5 11 15 20])
     info  =
        2.
     occ  =
        4.    1.    0.
     ind  =
        1.    2.    0.    1.    1.    0.    1.
        


We now explain these results.


+ X(1)=11 is in the interval I1, hence ind(1)=1.
+ X(2)=13 is in the interval I2, hence ind(2)=2.
+ X(3)=1 is not in any interval, hence ind(3)=0.
+ X(4)=7 is in the interval I1, hence ind(4)=1.
+ X(5)=5 is in the interval I1, hence ind(5)=1.
+ X(6)=2 is not in any interval, hence ind(6)=0.
+ X(7)=9 is in the interval I1, hence ind(7)=1.
+ There are four X entries (5, 7, 9 and 11) in I1, hence occ(1)=4.
+ There is one X entry (i.e. 13) in I2, hence occ(2)=1.
+ There is no X entry in I3, hence occ(3)=0.
+ There are two X entries (i.e. 1, 2) which are not in any interval,
  hence info=2.


In the following example, we consider the set [5 11 15 20] and are
searching the location of the X entries in this set.


::

    [ind, occ, info] = dsearch([11 13 1 7 5 2 9], [5 11 15 20],"d" )


The previous example produces the following output.


::

     
    -->[ind, occ, info] = dsearch([11 13 1 7 5 2 9], [5 11 15 20],"d" )
     info  =
        5.
     occ  =
        1.    1.    0.    0.
     ind  =
        2.    0.    0.    0.    1.    0.    0.
        


The following is a detailed explanation for the previous results.


+ X(1)=11 is in the set `s` at position #2, hence ind(1)=2.
+ X(2)=13 is not in the set `s`, hence ind(2)=0.
+ X(3)=1 is not in the set `s`, hence ind(3)=0.
+ X(4)=7 is not in the set `s`, hence ind(4)=0.
+ X(5)=5 is in the set `s` at position #1, hence ind(5)=1.
+ X(6)=2 is not in the set `s`, hence ind(6)=0.
+ X(7)=9 is not in the set `s`, hence ind(7)=0.
+ There is one entry X (i.e. 5) equal to 5, hence occ(1)=1.
+ There is one entry X (i.e. 11) equal to 1, hence occ(2)=1.
+ There are no entries matching `s(3)`, hence occ(3)=0.
+ There are no entries matching `s(4)`, hence occ(4)=0.
+ There are five X entries (i.e. 13, 1, 7, 2, 9) which are not in the
  set `s`, hence info=5.


The values in `s` must be in increasing order, whatever the value of
the `ch` option. If this is not true, an error is generated, as in the
following session.


::

     
    -->dsearch([11 13 1 7 5 2 9], [2 1])
    !--error 999
    dsearch   : the array s (arg 2) is not well ordered
    -->dsearch([11 13 1 7 5 2 9], [2 1],"d")
    !--error 999
    dsearch   : the array s (arg 2) is not well ordered
        




Advanced Examples
~~~~~~~~~~~~~~~~~

In the following example, we compare the empirical histogram of
uniform random numbers in [0,1) with the uniform distribution
function. To perform this comparison, we use the default search
algorithm based on intervals (ch="c"). We generate X as a collection
of m=50 000 uniform random numbers in the range [0,1). We consider the
n=10 values equally equally spaced values in the [0,1] range and
consider the associated intervals. Then we count the number of entries
in X which fall in the intervals: this is the empirical histogram of
the uniform distribution function. The expectation for occ/m is equal
to 1/(n-1).


::

    m = 50000 ; 
    n = 10;
    X = `grand`_(m,1,"def");
    s = `linspace`_(0,1,n)';
    [ind, occ] = dsearch(X, s);
    e = 1/(n-1)*`ones`_(1,n-1);
    `scf`_() ; 
    `plot`_(s(1:n-1), occ/m,"bo");
    `plot`_(s(1:n-1), e,"r-");
    `legend`_(["Experiment","Expectation"]);
    `xtitle`_("Uniform random numbers","X","P(X)");


In the following example, we compare the histogram of binomially
distributed random numbers with the binomial probability distribution
function B(N,p), with N=8 and p=0.5. To perform this comparison, we
use the discrete search algorithm based on a set (ch="d").


::

    N = 8 ; 
    p = 0.5; 
    m = 50000;
    X = `grand`_(m,1,"bin",N,p); 
    s = (0:N)';
    [ind, occ] = dsearch(X, s, "d");
    Pexp = occ/m; 
    Pexa = `binomial`_(p,N);
    `scf`_() ; 
    `plot`_(s,Pexp,"bo");
    `plot`_(s,Pexa',"r-");
    `xtitle`_("Binomial distribution B(8,0.5)","X","P(X)");
    `legend`_(["Experiment","Expectation"]);


In the following example, we use piecewise Hermite polynomials to
interpolate a dataset.


::

    // define Hermite base functions
    function y=Ll(t, k, x)
      // Lagrange left on Ik
      y=(t-x(k+1))./(x(k)-x(k+1))
    endfunction
    function y=Lr(t, k, x)
      // Lagrange right on Ik
      y=(t-x(k))./(x(k+1)-x(k))
    endfunction
    function y=Hl(t, k, x)
      y=(1-2*(t-x(k))./(x(k)-x(k+1))).*Ll(t,k,x).^2
    endfunction
    function y=Hr(t, k, x)
      y=(1-2*(t-x(k+1))./(x(k+1)-x(k))).*Lr(t,k,x).^2
    endfunction
    function y=Kl(t, k, x)
      y=(t-x(k)).*Ll(t,k,x).^2
    endfunction
    function y=Kr(t, k, x)
      y=(t-x(k+1)).*Lr(t,k,x).^2
    endfunction
    
    x = [0 ; 0.2 ; 0.35 ; 0.5 ; 0.65 ; 0.8 ;  1];
    y = [0 ; 0.1 ;-0.1  ; 0   ; 0.4  ;-0.1 ;  0];
    d = [1 ; 0   ; 0    ; 1   ; 0    ; 0   ; -1];
    X = `linspace`_(0, 1, 200)';
    ind = dsearch(X, x);
    
    // plot the curve
    Y = y(ind).*Hl(X,ind) + y(ind+1).*Hr(X,ind) + d(ind).*Kl(X,ind) + d(ind+1).*Kr(X,ind);
    `scf`_();
    `plot`_(X,Y,"k-");
    `plot`_(x,y,"bo")
    `xtitle`_("Hermite piecewise polynomial");
    `legend`_(["Polynomial","Data"]);
    // NOTE : you can verify by adding these ones :
    // YY = interp(X,x,y,d); plot2d(X,YY,3,"000")




See Also
~~~~~~~~


+ `find`_ find indices of boolean vector or matrix true elements
+ `tabul`_ frequency of values of a matrix or vector


.. _tabul: tabul.html
.. _find: find.html


