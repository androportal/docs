====
"fft"
====

Scilab Function Last update : 22/11/2005
**fft** - fast Fourier transform.

**ifft** - fast Fourier transform.



Calling Sequence
~~~~~~~~~~~~~~~~

x=fft(a ,-1) or x=fft(a)
x=fft(a,1) or x=ifft(a)
x=fft(a,-1,dim,incr)
x=fft(a,1,dim,incr)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector. Real or complex matrix (2-dim fft)
+ **a** : real or complex vector, matrix or multidimensionnal array.
+ **dim** : integer
+ **incr** : integer




Description
~~~~~~~~~~~

**Short syntax **
    **direct** **x=fft(a,-1)** or **x=fft(a)** gives a direct transform.
        **single variate** If **a** is a vector a single variate direct FFT is
          computed that is: x(k)=sum over m from 1 to n of
          a(m)*exp(-2i*pi*(m-1)*(k-1)/n) for k varying from 1 to n (n=size of
          vector **a** ). (the **-1** argument refers to the sign of the
          exponent..., NOT to "inverse"),
        **multivariate** If **a** is a matrix or or a multidimensionnal array
          a multivariate direct FFT is performed.


    **inverse** **a=fft(x,1)** or **a=ifft(x)** performs the inverse
    transform normalized by **1/n** .
        **single variate** If **a** is a vector a single variate inverse FFT
          is computed
        **multivariate** If **a** is a matrix or or a multidimensionnal array
          a multivariate inverse FFT is performed.




**Long syntax for multidimensional FFT** **x=fft(a,-1,dim,incr)**
allows to perform an multidimensional fft. If a is a real or complex
vector implicitly indexed by **j1,j2,..,jp** i.e. **a(j1,j2,..,jp)**
where **j1** lies in **1:dim(1),** **j2** in **1:dim(2),...** one gets
a p-variate FFT by calling p times **fft** as follows

::

    incrk=1; x=a; for k=1:p x=fft(x ,-1,dim(k),incrk)
            incrk=incrk*dim(k) end

where **dimk** is the dimension of the current variable w.r.t which
  one is integrating and **incrk** is the increment which separates two
  successive **jk** elements in **a** . In particular,if **a** is an mxn
  matrix, **x=fft(a,-1)** is equivalent to the two instructions:
  **a1=fft(a,-1,m,1)** and **x=fft(a1,-1,n,m)** .




Examples
~~~~~~~~


::

    
    
      //Comparison with explicit formula
      //----------------------------------
      a=[1;2;3];n=size(a,'*');
      norm(1/n*exp(2*%i*%pi*(0:n-1)'.*.(0:n-1)/n)*a -fft(a,1))
      norm(exp(-2*%i*%pi*(0:n-1)'.*.(0:n-1)/n)*a -fft(a,-1)) 
     
      //Frequency components of a signal
      //----------------------------------
      // build a noides signal sampled at 1000hz  containing to pure frequencies 
      // at 50 and 70 Hz
      sample_rate=1000;
      t = 0:1/sample_rate:0.6;
      N=size(t,'*'); //number of samples
      s=sin(2*%pi*50*t)+sin(2*%pi*70*t+%pi/4)+grand(1,N,'nor',0,1);
      
      y=fft(s);
      //the fft response is symetric we retain only the first N/2 points
      f=sample_rate*(0:(N/2))/N; //associated frequency vector
      n=size(f,'*')
      clf()
      plot2d(f,abs(y(1:n)))
     
      




See Also
~~~~~~~~

` **corr** `_,

.. _
      : ://./signal/corr.htm


