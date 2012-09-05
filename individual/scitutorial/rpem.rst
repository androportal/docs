


rpem
====

Recursive Prediction-Error Minimization estimation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [w1,[v]]=rpem(w0,u0,y0,[lambda,[k,[c]]])




Arguments
~~~~~~~~~

:w0 `list(theta,p,l,phi,psi)` where:
    :theta [a,b,c] is a real vector of order `3*n`
        :a,b,c `a=[a(1),...,a(n)], b=[b(1),...,b(n)], c=[c(1),...,c(n)]`
        :

    : :p (3*n x 3*n) real matrix.
    : :phi,psi,l real vector of dimension `3*n`
    :
Applicable values for the first call:

::

    theta=phi=psi=l=0*`ones`_(1,3*n). p=`eye`_(3*n,3*n)


: :u0 real vector of inputs (arbitrary size). ( `u0($)` is not used by
  rpem)
: :y0 vector of outputs (same dimension as `u0`). ( `y0(1)` is not
  used by rpem). If the time domain is `(t0,t0+k-1)` the `u0` vector
  contains the inputs `u(t0),u(t0+1),..,u(t0+k-1)` and `y0` the outputs
  `y(t0),y(t0+1),..,y(t0+k-1)`
:



Optional arguments
~~~~~~~~~~~~~~~~~~

:lambda optional argument (forgetting constant) choosed close to 1 as
convergence occur: `lambda=[lambda0,alfa,beta]` evolves according to :

::

    lambda(t)=alfa*lambda(t-1)+`beta`_

with `lambda(0)=lambda0`
: :k contraction factor to be chosen close to 1 as convergence occurs.
`k=[k0,mu,nu]` evolves according to:

::

    k(t)=mu*k(t-1)+nu

with `k(0)=k0`.
: :c Large argument.( `c=1000` is the default value).
:



Outputs:
~~~~~~~~

:w1 Update for `w0`.
: :v sum of squared prediction errors on `u0, y0`.(optional). In
  particular `w1(1)` is the new estimate of `theta`. If a new sample
  `u1, y1` is available the update is obtained by:
  `[w2,[v]]=rpem(w1,u1,y1,[lambda,[k,[c]]])`. Arbitrary large series can
  thus be treated.
:



Description
~~~~~~~~~~~

Recursive estimation of arguments in an ARMAX model. Uses Ljung-
Soderstrom recursive prediction error method. Model considered is the
following:


::

    y(t)+a(1)*y(t-1)+...+a(n)*y(t-n)=
    b(1)*u(t-1)+...+b(n)*u(t-n)+e(t)+c(1)*e(t-1)+...+c(n)*e(t-n)




The effect of this command is to update the estimation of unknown
argument `theta=[a,b,c]` with

`a=[a(1),...,a(n)], b=[b(1),...,b(n)], c=[c(1),...,c(n)]`.



