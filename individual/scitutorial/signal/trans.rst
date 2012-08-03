====
"trans"
====

Scilab Function Last update : 19/01/2006
**trans** - low-pass to other filter transform



Calling Sequence
~~~~~~~~~~~~~~~~

hzt=trans(hz,tr_type,frq)
hzt=trans(pd,zd,gd,tr_type,frq)




Parameters
~~~~~~~~~~


+ **hz** : given fiter transfert function
+ **pd** : Vector of given fiter poles
+ **zd** : Vector of given fiter zeros
+ **gd** : scalar: the given fiter gain
+ **tr_type** : string, the type of transformation, see description
  for possible values
+ **frq** : 2-vector of discrete cut-off frequencies (i.e.,
  **0<frq<.5** ). For lp and hp filters only frq(1) is used. For bp and
  sb filters frq(1) is the lower cut-off frequency and frq(2) is the
  upper cut-off frequency.
+ **hzt** : transformed filter transfert function.




Description
~~~~~~~~~~~

function for transforming standardized low-pass filter given its
poles-zeros_gain representation into one of the following filters:

low-pass ('lp'), the cutoff frequency is given by the first entry of
frq, the second one is ignored

high-pass ('hp'), the cutoff frequency is given by the first entry of
frq, the second one is ignored

band-pass ('bp'), the frequency range is given by frq(1) and frq(2)

stop-band ('sb') , the frequency range is given by frq(1) and frq(2).



Examples
~~~~~~~~


::

    
    
    clf()
    
    Hlp=iir(3,'lp','ellip',[0.1 0],[.08 .03]);
    subplot(311)
    gainplot(Hlp,1d-3,0.48)
    legend('original low pass')
    
    
    Hbp=trans(Hlp,'bp',[0.01 0.1]);
    subplot(312)
    gainplot(Hbp,1d-3,0.48)
    legend('band pass')
    
    
    Hsb=trans(Hlp,'sb',[0.01 0.1])
    subplot(313)
    gainplot(Hsb,1d-3,0.48)
    legend('stop band')
    
    
     
      




Author
~~~~~~

C. Bunks ;



