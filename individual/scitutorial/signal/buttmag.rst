====
"buttmag"
====

Scilab Function Last update : April 1993
**buttmag** - response of Butterworth filter



Calling Sequence
~~~~~~~~~~~~~~~~

[h]=buttmag(order,omegac,sample)




Parameters
~~~~~~~~~~


+ **order** : integer : filter order
+ **omegac** : real : cut-off frequency in Hertz
+ **sample** : vector of frequency where **buttmag** is evaluated
+ **h** : Butterworth filter values at sample points




Description
~~~~~~~~~~~

squared magnitude response of a Butterworth filter **omegac** = cutoff
frequency ; **sample** = sample of frequencies



Examples
~~~~~~~~


::

    
    
    //squared magnitude response of Butterworth filter
    h=buttmag(13,300,1:1000);
    mag=20*log(h)'/log(10);
    plot2d((1:1000)',mag,[2],"011"," ",[0,-180,1000,20])
     
      




Author
~~~~~~

F. D.



