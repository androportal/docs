


lin
===

linearization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [A,B,C,D]=lin(sim,x0,u0)
    [sl]=lin(sim,x0,u0)




Arguments
~~~~~~~~~

:sim function
: :x0, u0 vectors of compatible dimensions
: :A,B,C,D real matrices
: :sl `syslin` list
:



Description
~~~~~~~~~~~

linearization of the non-linear system `[y,xdot]=sim(x,u)` around
`x0,u0`.

`sim` is a function which computes `y` and `xdot`.

The output is a linear system ( `syslin` list) `sl` or the four
matrices `(A,B,C,D)`

For example, if `ftz` is the function passed to ode e.g.


::

    [zd]=ftz(t,z,u)


and if we assume that `y=x`

`[z]=ode(x0,t0,tf,list(ftz,u)` compute `x(tf)`.

If `simula` is the following function:


::

    `deff`_('[y,xd]=simula(x,u)','xd=ftz(tf,x,u); y=x;');


the tangent linear system `sl` can be obtained by:


::

    [A,B,C,D]=lin(simula,z,u)
    sl = `syslin`_('c',A,B,C,D,x0)




Examples
~~~~~~~~


::

    `deff`_('[y,xdot]=sim(x,u)','xdot=[u*sin(x);-u*x^2];y=xdot(1)+xdot(2)')
    sl=lin(sim,1,2);




See Also
~~~~~~~~


+ `external`_ Scilab Object, external function or routine
+ `derivat`_ rational matrix derivative


.. _derivat: derivat.html
.. _external: external.html


