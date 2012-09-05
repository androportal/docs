


cdfgam
======

cumulative distribution function gamma distribution



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [P,Q]=cdfgam("PQ",X,Shape,Rate)
    [X]=cdfgam("X",Shape,Rate,P,Q)
    [Shape]=cdfgam("Shape",Rate,P,Q,X)
    [Rate]=cdfgam("Rate",P,Q,X,Shape)




Arguments
~~~~~~~~~

:P,Q,X,Shape,Rate five real vectors of the same size.
: :P,Q (Q=1-P) The integral from 0 to X of the gamma density. Input
  range: [0,1].
: :X The upper limit of integration of the gamma density. Input range:
  [0, +infinity). Search range: [0,1E300]
: :Shape The shape parameter of the gamma density. Input range: (0,
  +infinity). Search range: [1E-300,1E300]
: :Rate The rate parameter of the gamma density. Input range: (0,
  +infinity). Search range: (1E-300,1E300]
:



Description
~~~~~~~~~~~

Calculates any one parameter of the gamma distribution given values
for the others.

The gamma density is



where a is the shape and r is the rate.

Caution. As opposed to other technical computing languages, this
function makes use of the rate parameter, and not the scale parameter.
The rate parameter is linked to the scale parameter with the equation
rate=1/scale.

Computation of parameters such as X, Shape or Rate involve a seach for
a value that produces the desired value of P. The search relies on the
monotinicity of P with the other parameter.



Examples
~~~~~~~~

In the following example, we compute the probability of the event
`x=0.1` for the Gamma distribution function with `Shape=1.0` and
`Rate=1.0`.


::

    Shape = 0.1
    Rate = 1.0
    x = 0.1
    // Expected : P = 0.8275518
    [P,Q]=cdfgam("PQ",x,Shape,Rate)


In the following example, we compute the probability of the event
`x=0.1` and check that the search algorithms allows to consistently
invert the function.


::

    Shape = 0.1
    Rate = 2.0
    x = 0.3
    [P,Q]    = cdfgam("PQ",x,Shape,Rate)
    [X1]     = cdfgam("X",Shape,Rate,P,Q)
    [Shape1] = cdfgam("Shape",Rate,P,Q,x)
    [Rate1] = cdfgam("Rate",P,Q,x,Shape)


In the following example, we draw the Gamma distribution function for
various values of the shape and rate.


::

    N = 1000;
    x = `linspace`_(0,20,N)';
    Shape = [1 2 3 5 9];
    Rate = 1 ./ [2 2 2 1 0.5];
    C = ["red" "green" "blue" "cyan" "orange"];
    lstr = [];
    `drawlater`_();
    h = `gcf`_();
    for i = 1 : 5
      P = cdfgam("PQ",x,Shape(i)*`ones`_(N,1),Rate(i)*`ones`_(N,1));
      lstr(i) = `msprintf`_("Shape=%s, Rate=%s",`string`_(Shape(i)),`string`_(Rate(i)));
      `plot`_(x,P);
      h.children.children(1).children.foreground = `color`_(C(i));
    end
    `legend`_(lstr);
    `xtitle`_("CDF of the Gamma distribution function","X","P");
    `drawnow`_();




Bibliography
~~~~~~~~~~~~

Cumulative distribution function (P) is calculated directly by the
code associated with:

DiDinato, A. R. and Morris, A. H. Computation of the incomplete gamma
function ratios and their inverse. ACM Trans. Math. Softw. 12 (1986),
377-393.

From DCDFLIB: Library of Fortran Routines for Cumulative Distribution
Functions, Inverses, and Other Parameters (February, 1994) Barry W.
Brown, James Lovato and Kathy Russell. The University of Texas.



