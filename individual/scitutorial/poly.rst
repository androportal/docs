


poly
====

polynomial definition



Calling Sequence
~~~~~~~~~~~~~~~~


::

    p=poly(a,vname, ["flag"])




Arguments
~~~~~~~~~

:a matrix or real number
: :vname String, the symbolic variable name. If the string have more
  than 4 characters only the first 4 are taken into account.
: :"flag" string ("roots", "coeff"), default value is `"roots"`.
:



Description
~~~~~~~~~~~

:If `a` is a matrix, `p` is the characteristic polynomial i.e.
  `determinant(x*eye()-a)`, `x` being the symbolic variable.
: :If v is a vector,

    + `poly(v,"x",["roots"])` is the polynomial with `roots` the entries
      of `v` and `"x"` as formal variable. (In this case, `roots` and `poly`
      are inverse functions). Note that Infinite roots gives zero highest
      degree coefficients.
    + `poly(v,"x","coeff")` creates the polynomial with symbol `"x"` and
      with coefficients the entries of `v` ( `v(1)` is the constant term of
      the polynomial). (Here `poly` and `coeff` are inverse functions).

:

`s=poly(0,"s")` is the seed for defining polynomials with symbol
`"s"`.



Examples
~~~~~~~~


::

    s=poly(0,"s");
    p=1+s+2*s^2;
    A=`rand`_(2,2);
    poly(A,"x")
    //rational fractions
    h=(1+2*%s)/poly(1:4,'s','c')




See Also
~~~~~~~~


+ `coeff`_ coefficients of matrix polynomial
+ `roots`_ roots of polynomials
+ `varn`_ symbolic variable of a polynomial
+ `horner`_ polynomial/rational evaluation
+ `derivat`_ rational matrix derivative
+ `matrices`_ Scilab object, matrices in Scilab
+ `rational`_ Scilab objects, rational in Scilab


.. _varn: varn.html
.. _derivat: derivat.html
.. _horner: horner.html
.. _roots: roots.html
.. _matrices: matrices.html
.. _coeff: coeff.html
.. _rational: rational.html


