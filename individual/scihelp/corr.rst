


corr
====

correlation, covariance



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [cov,Mean]=corr(x,[y],nlags)
    [cov,Mean]=corr('fft',xmacro,[ymacro],n,sect)
    
    [w,xu]=corr('updt',x1,[y1],w0)
    [w,xu]=corr('updt',x2,[y2],w,xu)
    ...
    [wk]=corr('updt',xk,[yk],w,xu)




Arguments
~~~~~~~~~

:x a real vector
: :y a real vector, default value x.
: :nlags integer, number of correlation coefficients desired.
: :xmacro a scilab external (see below).
: :ymacro a scilab external (see below), default value xmacro
: :n an integer, total size of the sequence (see below).
: :sect size of sections of the sequence (see below).
: :xi a real vector
: :yi a real vector,default value xi.
: :cov real vector, the correlation coefficients
: :Mean real number or vector, the mean of x and if given y
:



Description
~~~~~~~~~~~

Computes


::

    n - m 
    ====
    \                                       1
    cov(m) =  >   (x(k) - xmean) (y(m+k) - ymean) * ---
    /                                       n
    ====
    k = 1


for m=0,.., `nlag-1` and two vectors `x=[x(1),..,x(n)]`
`y=[y(1),..,y(n)]`

Note that if x and y sequences are differents corr(x,y,...) is
different with corr(y,x,...)

:Short sequences `[cov,Mean]=corr(x,[y],nlags)` returns the first
  nlags correlation coefficients and Mean = `mean(x)` (mean of `[x,y]`
  if `y` is an argument). The sequence `x` (resp. `y`) is assumed real,
  and `x` and `y` are of same dimension n.
: :Long sequences `[cov,Mean]=corr('fft',xmacro,[ymacro],n,sect)` Here
`xmacro` is either

    + a function of type `[xx]=xmacro(sect,istart)` which returns a vector
      `xx` of dimension `nsect` containing the part of the sequence with
      indices from `istart` to `istart+sect-1`.
    + a fortran subroutine or C procedure which performs the same
      calculation. (See the source code of `dgetx` for an example). `n` =
      total size of the sequence. `sect` = size of sections of the sequence.
      `sect` must be a power of 2. `cov` has dimension `sect`. Calculation
      is performed by FFT.

: :Updating method

::

    [w,xu]=corr('updt',x1,[y1],w0)
    [w,xu]=corr('updt',x2,[y2],w,xu)
     ...
    wk=corr('updt',xk,[yk],w,xu)

With this calling sequence the calculation is updated at each call to
`corr`.

::

    w0 = 0*`ones`_(1,2*nlags);
    nlags = power of 2.

`x1,x2,...` are parts of `x` such that `x=[x1,x2,...]` and sizes of
  `xi` a power of 2. To get `nlags` coefficients a final fft must be
  performed `c=fft(w,1)/n`; `cov=c(1nlags)` ( `n` is the size of `x
  (y)`). Caution: this calling sequence assumes that `xmean = ymean =
  0`.
:



Examples
~~~~~~~~


::

    x=%pi/10:%pi/10:102.4*%pi;
    `rand`_('seed');`rand`_('normal');
    y=[.8*`sin`_(x)+.8*`sin`_(2*x)+`rand`_(x);.8*`sin`_(x)+.8*`sin`_(1.99*x)+`rand`_(x)];
    c=[];
    for j=1:2,for k=1:2,c=[c;corr(y(k,:),y(j,:),64)];end;end;
    c=`matrix`_(c,2,128);cov=[];
    for j=1:64,cov=[cov;c(:,(j-1)*2+1:2*j)];end;
    `rand`_('unif')
    
    `rand`_('normal');x=`rand`_(1,256);y=-x;
    `deff`_('[z]=xx(inc,is)','z=x(is:is+inc-1)');
    `deff`_('[z]=yy(inc,is)','z=y(is:is+inc-1)');
    [c,mxy]=corr(x,y,32);
    x=x-mxy(1)*`ones`_(x);y=y-mxy(2)*`ones`_(y);  //centring
    c1=corr(x,y,32);c2=corr(x,32);
    `norm`_(c1+c2,1)
    [c3,m3]=corr('fft',xx,yy,256,32);
    `norm`_(c1-c3,1)
    [c4,m4]=corr('fft',xx,256,32);
    `norm`_(m3,1),`norm`_(m4,1)
    `norm`_(c3-c1,1),`norm`_(c4-c2,1)
    x1=x(1:128);x2=x(129:256);
    y1=y(1:128);y2=y(129:256);
    w0=0*`ones`_(1:64);   //32 coeffs
    [w1,xu]=corr('u',x1,y1,w0);w2=corr('u',x2,y2,w1,xu);
    zz=`real`_(`fft`_(w2,1))/256;c5=zz(1:32);
    `norm`_(c5-c1,1)
    [w1,xu]=corr('u',x1,w0);w2=corr('u',x2,w1,xu);
    zz=`real`_(`fft`_(w2,1))/256;c6=zz(1:32);
    `norm`_(c6-c2,1)
    `rand`_('unif')
    
    // test for Fortran or C external 
    //
    `deff`_('[y]=xmacro(sec,ist)','y=sin(ist:(ist+sec-1))');
    x=xmacro(100,1);
    [cc1,mm1]=corr(x,2^3);
    [cc,mm]=corr('fft',xmacro,100,2^3);
    [cc2,mm2]=corr('fft','corexx',100,2^3);
    [`max`_(`abs`_(cc-cc1)),`max`_(`abs`_(mm-mm1)),`max`_(`abs`_(cc-cc2)),`max`_(`abs`_(mm-mm2))]
    
    `deff`_('[y]=ymacro(sec,ist)','y=cos(ist:(ist+sec-1))');
    y=ymacro(100,1);
    [cc1,mm1]=corr(x,y,2^3);
    [cc,mm]=corr('fft',xmacro,ymacro,100,2^3);
    [cc2,mm2]=corr('fft','corexx','corexy',100,2^3);
    [`max`_(`abs`_(cc-cc1)),`max`_(`abs`_(mm-mm1)),`max`_(`abs`_(cc-cc2)),`max`_(`abs`_(mm-mm2))]




See Also
~~~~~~~~


+ `fft`_ fast Fourier transform.


.. _fft: fft.html


