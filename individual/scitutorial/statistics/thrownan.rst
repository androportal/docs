====
"thrownan"
====

Last update : November 2002
**thrownan** - eliminates nan values



Calling Sequence
~~~~~~~~~~~~~~~~

[nonan,numb]=thrownan(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector or matrix




Description
~~~~~~~~~~~

This function returns in vector **nonan** the values (ignoring the
NANs) of a vector or matrix **x** and in the corresponding places of
vector **numb** the indexes of the value.

For a vector or matrix **x** , **[nonan,numb]=thrownan(x)** considers
**x** , whatever his dimensions are, like a vector (columns first).

In Labostat, NAN values stand for missing values in tables.



Examples
~~~~~~~~


::

    
    
    
    x=[0.2113249 %nan 0.6653811;0.7560439 0.3303271 0.6283918]
    [nonan numb]=thrownan(x)
    
     
      




Author
~~~~~~

Carlos Klimann



