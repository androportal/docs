====
"hilb"
====

Scilab Function Last update : April 1993
**hilb** - Hilbert transform



Calling Sequence
~~~~~~~~~~~~~~~~

[xh]=hilb(n[,wtype][,par])




Parameters
~~~~~~~~~~


+ **n** : odd integer : number of points in filter
+ **wtype** : string : window type **('re','tr','hn','hm','kr','ch')**
  (default **='re'** )
+ **par** : window parameter for **wtype='kr' or 'ch'** default
  **par=[0 0]** see the function window for more help
+ **xh** : Hilbert transform




Description
~~~~~~~~~~~

returns the first n points of the Hilbert transform centred around the
origin.

That is, **xh=(2/(n*pi))*(sin(n*pi/2))^2** .



Examples
~~~~~~~~


::

    
    
    plot(hilb(51))
     
      




Author
~~~~~~

C. B.



