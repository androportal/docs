


gtild
=====

tilde operation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Gt=gtild(G)
    Gt=gtild(G,flag)




Arguments
~~~~~~~~~

:G either a polynomial or a linear system ( `syslin` list) or a
  rational matrix
: :Gt same as G
: :flag character string: either `'c'` or `'d'` (optional parameter).
:



Description
~~~~~~~~~~~

If `G` is a polynomial matrix (or a polynomial), `Gt=gtild(G,'c')`
returns the polynomial matrix `Gt(s)=G(-s)'`.

If `G` is a polynomial matrix (or a polynomial), `Gt=gtild(G,'d')`
returns the polynomial matrix `Gt=G(1/z)*z^n` where n is the maximum
degree of `G`.

For continuous-time systems represented in state-space by a `syslin`
list, `Gt = gtild(G,'c')` returns a state-space representation of
`G(-s)'` i.e the `ABCD` matrices of `Gt` are `A',-C', B', D'`. If `G`
is improper ( `D= D(s)`) the `D` matrix of `Gt` is `D(-s)'`.

For discrete-time systems represented in state-space by a `syslin`
list, `Gt = gtild(G,'d')` returns a state-space representation of
`G(-1/z)'` i.e the (possibly improper) state-space representation of
`-z*C*inv(z*A-B)*C + D(1/z)`.

For rational matrices, `Gt = gtild(G,'c')` returns the rational matrix
`Gt(s)=G(-s)` and `Gt = gtild(G,'d')` returns the rational matrix
`Gt(z)= G(1/z)'`.

The parameter `flag` is necessary when `gtild` is called with a
polynomial argument.



Examples
~~~~~~~~


::

    //Continuous time
    s=`poly`_(0,'s');G=[s,s^3;2+s^3,s^2-5]
    Gt=gtild(G,'c')
    Gt-`horner`_(G,-s)'   //continuous-time interpretation
    Gt=gtild(G,'d');
    Gt-`horner`_(G,1/s)'*s^3  //discrete-time interpretation
    G=`ssrand`_(2,2,3);Gt=gtild(G);   //State-space (G is cont. time by default)
    `clean`_((`horner`_(`ss2tf`_(G),-s))'-`ss2tf`_(Gt))   //Check
    
    // Discrete-time 
    z=`poly`_(0,'z');
    Gss=`ssrand`_(2,2,3);Gss('dt')='d'; //discrete-time
    Gss(5)=[1,2;0,1];   //With a constant D matrix
    G=`ss2tf`_(Gss);Gt1=`horner`_(G,1/z)';
    Gt=gtild(Gss);
    Gt2=`clean`_(`ss2tf`_(Gt)); `clean`_(Gt1-Gt2)  //Check
    
    //Improper systems
    z=`poly`_(0,'z');
    Gss=`ssrand`_(2,2,3);Gss(7)='d'; //discrete-time
    Gss(5)=[z,z^2;1+z,3];    //D(z) is polynomial 
    G=`ss2tf`_(Gss);Gt1=`horner`_(G,1/z)';  //Calculation in transfer form
    Gt=gtild(Gss);    //..in state-space 
    Gt2=`clean`_(`ss2tf`_(Gt));`clean`_(Gt1-Gt2)  //Check




See Also
~~~~~~~~


+ `syslin`_ linear system definition
+ `horner`_ polynomial/rational evaluation
+ `factors`_ numeric real factorization


.. _horner: horner.html
.. _factors: factors.html
.. _syslin: syslin.html


