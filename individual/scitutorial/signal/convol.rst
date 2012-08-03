====
"convol"
====

Scilab Function Last update : April 1993
**convol** - convolution



Calling Sequence
~~~~~~~~~~~~~~~~

[y]=convol(h,x)
[y,e1]=convol(h,x,e0)




Parameters
~~~~~~~~~~


+ **x,h** :input sequences ( **h** is a "short" sequence, **x** a
  "long" one)
+ **e0** : old tail to overlap add (not used in first call)
+ **y** : output of convolution
+ **e1** : new tail to overlap add (not used in last call)




Description
~~~~~~~~~~~

calculates the convolution **y= h*x** of two discrete sequences by
using the fft. Overlap add method can be used.

USE OF OVERLAP ADD METHOD: For x=[x1,x2,...,xNm1,xN] First call is
[y1,e1]=convol(h,x1); Subsequent calls : [yk,ek]=convol(h,xk,ekm1);
Final call : [yN]=convol(h,xN,eNm1); Finally y=[y1,y2,...,yNm1,yN]



Examples
~~~~~~~~


::

    
    
    x=1:3;
    h1=[1,0,0,0,0];h2=[0,1,0,0,0];h3=[0,0,1,0,0];
    x1=convol(h1,x),x2=convol(h2,x),x3=convol(h3,x),
    convol(h1+h2+h3,x)
    p1=poly(x,'x','coeff')
    p2=poly(h1+h2+h3,'x','coeff')
    p1*p2
     
      




See Also
~~~~~~~~

` **corr** `_,` **fft** `_,` **pspect** `_,



Author
~~~~~~

F. D , C. Bunks Date 3 Oct. 1988; ;

.. _
      : ://./signal/corr.htm
.. _
      : ://./signal/pspect.htm
.. _
      : ://./signal/fft.htm


