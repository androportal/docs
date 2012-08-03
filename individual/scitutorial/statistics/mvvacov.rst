====
"mvvacov"
====

Last update : May 2002
**mvvacov** - computes variance-covariance matrix



Calling Sequence
~~~~~~~~~~~~~~~~

v=mvvacov(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector or matrix




Description
~~~~~~~~~~~

This function computes v, the matrix of variance-covariance of the
"tableau" x (x is a numerical matrix nxp) who gives the values of p
variables for n individuals: the (i,j) coefficient of v is v(i,j)=E
(xi-xibar)(xj-xjbar), where E is the first moment of a variable, xi is
the i-th variable and xibar the mean of the xi variable.



Examples
~~~~~~~~


::

    
    
    
    x=[0.2113249 0.0002211 0.6653811;0.7560439 0.4453586 0.6283918]
    v=mvvacov(x)
     
      




Author
~~~~~~

Carlos Klimann



Bibliography
~~~~~~~~~~~~

Saporta, Gilbert, Probabilites, Analyse des Donnees et Statistique,
Editions Technip, Paris, 1990. Mardia, K.V., Kent, J.T. & Bibby, J.M.,
Multivariate Analysis, Academic Press, 1979.



