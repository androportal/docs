====
"zpch2"
====

Scilab Function Last update : April 1993
**zpch2** - Chebyshev analog filter



Calling Sequence
~~~~~~~~~~~~~~~~

[zeros,poles,gain]=zpch2(n,A,omegar)




Parameters
~~~~~~~~~~


+ **n** : integer : filter order
+ **A** : real : attenuation in stop band ( **A>1** )
+ **omegar** : real : cut-off frequency in Hertz
+ **zeros** : resulting filter zeros
+ **poles** : resulting filter poles
+ **gain** : Resulting filter gain




Description
~~~~~~~~~~~

Poles and zeros of a type 2 Chebyshev analog filter gain is the gain
of the filter


::

    
    
    H(s)=gain*poly(zeros,'s')/poly(poles,'s')
       
        




Author
~~~~~~

F.D.



