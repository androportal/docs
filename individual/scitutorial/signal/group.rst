====
"group"
====

Scilab Function Last update : April 1993
**group** - group delay for digital filter



Calling Sequence
~~~~~~~~~~~~~~~~

[tg,fr]=group(npts,a1i,a2i,b1i,b2i)




Parameters
~~~~~~~~~~


+ **npts** : integer : number of points desired in calculation of
  group delay
+ **a1i** : in coefficient, polynomial, rational polynomial, or
  cascade polynomial form this variable is the transfer function of the
  filter. In coefficient polynomial form this is a vector of
  coefficients (see below).
+ **a2i** : in coeff poly form this is a vector of coeffs
+ **b1i** : in coeff poly form this is a vector of coeffs
+ **b2i** : in coeff poly form this is a vector of coeffs
+ **tg** : values of group delay evaluated on the grid fr
+ **fr** : grid of frequency values where group delay is evaluated




Description
~~~~~~~~~~~

Calculate the group delay of a digital filter with transfer function
h(z).

The filter specification can be in coefficient form, polynomial form,
rational polynomial form, cascade polynomial form, or in coefficient
polynomial form.

In the coefficient polynomial form the transfer function is formulated
by the following expression

**h(z)=prod(a1i+a2i*z+z**2)/prod(b1i+b2i*z+z^2)**



Examples
~~~~~~~~


::

    
    
    z=poly(0,'z');
    h=z/(z-.5);
    [tg,fr]=group(100,h);
    plot(fr,tg)
     
      




Author
~~~~~~

C. B.



