====
"pspect"
====

Scilab Function Last update : April 1993
**pspect** - cross-spectral estimate between 2 series



Calling Sequence
~~~~~~~~~~~~~~~~

[sm,cwp]=pspect(sec_step,sec_leng,wtype,x,y,wpar)




Parameters
~~~~~~~~~~


+ **x** : data if vector, amount of input data if scalar
+ **y** : data if vector, amount of input data if scalar
+ **sec_step** : offset of each data window
+ **sec_leng** : length of each data window
+ **wtype** : window type **(re,tr,hm,hn,kr,ch)**
+ **wpar** : optional parameters for **wtype='kr', wpar>0** for
  **wtype='ch', 0<wpar(1)<.5, wpar(2)>0**
+ **sm** : power spectral estimate in the interval **[0,1]**
+ **cwp** : unspecified Chebyshev window parameter




Description
~~~~~~~~~~~

Cross-spectral estimate between **x** and **y** if both are given and
auto-spectral estimate of **x** otherwise. Spectral estimate obtained
using the modified periodogram method.



Reference
~~~~~~~~~

Digital Signal Processing by Oppenheim and Schafer



Examples
~~~~~~~~


::

    
    
    rand('normal');rand('seed',0);
    x=rand(1:1024-33+1);
    //make low-pass filter with eqfir
    nf=33;bedge=[0 .1;.125 .5];des=[1 0];wate=[1 1];
    h=eqfir(nf,bedge,des,wate);
    //filter white data to obtain colored data 
    h1=[h 0*ones(1:maxi(size(x))-1)];
    x1=[x 0*ones(1:maxi(size(h))-1)];
    hf=fft(h1,-1);   xf=fft(x1,-1);yf=hf.*xf;y=real(fft(yf,1));
    //plot magnitude of filter
    //h2=[h 0*ones(1:968)];hf2=fft(h2,-1);hf2=real(hf2.*conj(hf2));
    //hsize=maxi(size(hf2));fr=(1:hsize)/hsize;plot(fr,log(hf2));
    //pspect example
    sm=pspect(100,200,'tr',y);smsize=maxi(size(sm));fr=(1:smsize)/smsize;
    plot(fr,log(sm));
    rand('unif');
     
      




See Also
~~~~~~~~

` **cspect** `_,



Author
~~~~~~

C. B.

.. _
      : ://./signal/cspect.htm


