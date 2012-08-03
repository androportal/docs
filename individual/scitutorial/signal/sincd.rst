====
"sincd"
====

Scilab Function Last update : April 1993
**sincd** - digital sinc function or Direchlet kernel



Calling Sequence
~~~~~~~~~~~~~~~~

[s]=sincd(n,flag)




Parameters
~~~~~~~~~~


+ **n** : integer
+ **flag** : if **flag = 1** the function is centred around the
  origin; if **flag = 2** the function is delayed by **%pi/(2*n)**
+ **s** : vector of values of the function on a dense grid of
  frequencies




Description
~~~~~~~~~~~

function which calculates the function **Sin(N*x)/N*Sin(x)**



Examples
~~~~~~~~


::

    
    
    plot(sincd(10,1)) 
     
      




Author
~~~~~~

G. Le V.



