


fit_dat
=======

Parameter identification based on measured data



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [p,err]=fit_dat(G,p0,Z [,W] [,pmin,pmax] [,DG])




Arguments
~~~~~~~~~

:G Scilab function (e=G(p,z), e: nex1, p: npx1, z: nzx1)
: :p0 initial guess (size npx1)
: :Z matrix [z_1,z_2,...z_n] where z_i (nzx1) is the ith measurement
: :W weighting matrix of size nexne (optional; default 1)
: :pmin lower bound on p (optional; size npx1)
: :pmax upper bound on p (optional; size npx1)
: :DG partial of G wrt p (optional; S=DG(p,z), S: nexnp)
:



Description
~~~~~~~~~~~

`fit_dat` is used for fitting data to a model. For a given function
G(p,z), this function finds the best vector of parameters p for
approximating G(p,z_i)=0 for a set of measurement vectors z_i. Vector
p is found by minimizing
`G(p,z_1)'WG(p,z_1)+G(p,z_2)'WG(p,z_2)+...+G(p,z_n)'WG(p,z_n)`



Examples
~~~~~~~~


::

    function y=FF(x)
      y=a*(x-b)+c*x.*x;
    endfunction
    X=[];
    Y=[];
    a=34;
    b=12;
    c=14;
    for x=0:.1:3
      Y=[Y,FF(x)+100*(`rand`_()-.5)];
      X=[X,x];
    end
    Z=[Y;X];
    function e=G(p, z)
      a=p(1)
      b=p(2)
      c=p(3)
      y=z(1)
      x=z(2)
      e=y-FF(x)
    endfunction
    
    [p,err]=fit_dat(G,[3;5;10],Z)
    
    `xset`_('window',0)
    `clf`_();
    `plot2d`_(X',Y',-1) 
    `plot2d`_(X',FF(X)',5,'002')
    a=p(1);
    b=p(2);
    c=p(3);
    `plot2d`_(X',FF(X)',12,'002')
    
    a=34;
    b=12;
    c=14;
    function s=DG(p, z)
      y=z(1),
      x=z(2),
      s=-[x-p(2),-p(1),x*x]
    endfunction
    
    [p,err]=fit_dat(G,[3;5;10],Z,DG)
    
    `xset`_('window',1)
    `clf`_();
    `plot2d`_(X',Y',-1) 
    `plot2d`_(X',FF(X)',5,'002')
    a=p(1);
    b=p(2);
    c=p(3);
    `plot2d`_(X',FF(X)',12,'002')




See Also
~~~~~~~~


+ `optim`_ non-linear optimization routine
+ `datafit`_ Parameter identification based on measured data


.. _datafit: datafit.html
.. _optim: optim.html


