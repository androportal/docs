====
"window"
====

Scilab Function Last update : 15/09/2004
**window** - compute symmetric window of various type



Calling Sequence
~~~~~~~~~~~~~~~~

win_l=window('re',n)
win_l=window('tr',n)
win_l=window('hn',n)
win_l=window('hm',n)
win_l=window('kr',n,alpha)
[win_l,cwp]=window('ch',n,par)




Parameters
~~~~~~~~~~


+ **n** : window length
+ **par** : parameter 2-vector **par=[dp,df])** , where **dp** (
  **0<dp<.5** ) rules the main lobe width and **df** rules the side lobe
  height ( **df>0** ).Only one of these two value should be specified
  the other one should set equal to **-1** .
+ **alpha** : kaiser window parameter **alpha >0** ).
+ **win** : window
+ **cwp** : unspecified Chebyshev window parameter




Description
~~~~~~~~~~~

function which calculates various symmetric window for Disgital signal
processing

The Kaiser window is a nearly optimal window function. **alpha** is an
arbitrary positive real number that determines the shape of the
window, and the integer **n** is the length of the window.

By construction, this function peaks at unity for ** k = n/2** , i.e.
at the center of the window, and decays exponentially towards the
window edges. The larger the value of **alpha** , the narrower the
window becomes; **alpha = 0** corresponds to a rectangular window.
Conversely, for larger **alpha** the width of the main lobe increases
in the Fourier transform, while the side lobes decrease in amplitude.
Thus, this parameter controls the tradeoff between main-lobe width and
side-lobe area.
alpha window shape 0 Rectangular shape 5 Similar to the Hamming window
6 Similar to the Hanning window 8.6 Similar to the Blackman window
The Chebyshev window minimizes the mainlobe width, given a particular
sidelobe height. It is characterized by an equiripple behavior, that
is, its sidelobes all have the same height.

The Hanning and Hamming windows are quite similar, they only differ in
the choice of one parameter **alpha** : ** w=alpha+(1 -
alpha)*cos(2*%pi*x/(n-1))** **alpha** is equal to 1/2 in Hanning
window and to 0.54 in Hamming window.



Examples
~~~~~~~~


::

    
    
    // Hamming window
    clf()
    N=64;
    w=window('hm',N);
    subplot(121);plot2d(1:N,w,style=color('blue'))
    set(gca(),'grid',[1 1]*color('gray'))
    subplot(122)
    n=256;[W,fr]=frmag(w,n);
    plot2d(fr,20*log10(W),style=color('blue'))
    set(gca(),'grid',[1 1]*color('gray'))
    
    //Kaiser window
    clf()
    N=64;
    w=window('kr',N,6);
    subplot(121);plot2d(1:N,w,style=color('blue'))
    set(gca(),'grid',[1 1]*color('gray'))
    subplot(122)
    n=256;[W,fr]=frmag(w,n);
    plot2d(fr,20*log10(W),style=color('blue'))
    set(gca(),'grid',[1 1]*color('gray'))
    
    //Chebyshev window
    clf()
    N=64;
    [w,df]=window('ch',N,[0.005,-1]);
    subplot(121);plot2d(1:N,w,style=color('blue'))
    set(gca(),'grid',[1 1]*color('gray'))
    subplot(122)
    n=256;[W,fr]=frmag(w,n);
    plot2d(fr,20*log10(W),style=color('blue'))
    set(gca(),'grid',[1 1]*color('gray'))
       
      




See Also
~~~~~~~~

` **wfir** `_,` **frmag** `_,` **ffilt** `_,



Author
~~~~~~

Carey Bunks



Bibliography
~~~~~~~~~~~~
IEEE. Programs for Digital Signal Processing. IEEE Press. New York:
John Wiley and Sons, 1979. Program 5.2.
.. _
      : ://./signal/wfir.htm
.. _
      : ://./signal/frmag.htm
.. _
      : ://./signal/ffilt.htm


