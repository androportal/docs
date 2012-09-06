


arma
====

Scilab arma library



Description
~~~~~~~~~~~

Armax processes can be coded with Scilab tlist of type `'ar'`. `armac`
is used to build `Armax` scilab object. An `'ar'` tlist contains the
fields `['a','b','d','ny','nu','sig']`.

:armac this function creates a Scilab tlist which code an Armax
process `A(z^-1)y= B(z^-1)u + D(z^-1)sig*e(t)`

::

    -->ar=`armac`_([1,2],[3,4],1,1,1,sig);
     
    -->ar('a')   
     ans  =
     
    !   1.    2. !
    -->ar('sig')
     ans  =
     
        1.


: :armap(ar [,out]) Display the armax equation associated with `ar`
: :armap_p(ar [,out]) Display the armax equation associated with `ar`
  using polynomial matrix display.
: :[A,B,D]=armap2p(ar) extract polynomial matrices from ar
  representation
: :armax is used to identify the coefficients of a n-dimensional ARX
  process `A(z^-1)y= B(z^-1)u + sig*e(t)`
: :armax1 armax1 is used to identify the coefficients of a
  1-dimensional ARX process `A(z^-1)y= B(z^-1)u + D(z^-1)sig*e(t)`
: :arsimul armax trajectory simulation.
: :narsimul armax simulation ( using rtitr)
: :odedi Simple tests of ode and arsimul. Tests the option 'discret'
  of ode
: :prbs_a pseudo random binary sequences generation
: :reglin Linear regression
:



Example
~~~~~~~


::

    // Example extracted from the demo arma3.dem.sce in the cacsd module
    // Spectral power estimation 
    // ( form Sawaragi et all) 
    m = 18;
    a = [1,-1.3136,1.4401,-1.0919,+0.83527];
    b = [0.0,0.13137,0.023543,0.10775,0.03516];
    u = `rand`_(1,1000,'n');
    z = `arsimul`_(a,b,[0],0,u);
    
    //----Using macro mese 
    [sm,fr]=`mese`_(z,m);
    
    //----The theorical result 
    
    function gx=gxx(z, a, b)
      w  = `exp`_(-%i*2*%pi*z*(0:4))'
      gx = `abs`_(b*w)^2/(`abs`_(a*w)^2);
    endfunction
    
    res=[];
    for x=fr
      res=[ res, gxx(x,a,b)];
    end
    
    //----using armax estimation of order  (4,4)
    // it's a bit tricky because we are not supposed to know the order
    
    [arc,la,lb,sig,resid]=`armax`_(4,4,z,u);
    res1=[];
    for x=fr
      res1=[ res1, gxx(x,la(1),lb(1))];
    end
    
    //-- visualization of the results
    `plot2d`_([fr;fr;fr]',[20*`log10`_(sm/sm(1));20*`log10`_(res/res(1));20*`log10`_(res1/res1(1))]',[2,1,-1])
    `legend`_(["Using macro mese";"Theoretical value";"Arma identification"])
    `xtitle`_("Spectral power","frequency","spectral estimate")




