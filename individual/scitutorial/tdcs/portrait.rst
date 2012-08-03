====
"portrait"
====

Scilab Function Last update : April 1993
**portrait** - 2 dimensional phase portrait.



Calling Sequence
~~~~~~~~~~~~~~~~

[]=portrait(f,[odem,xdim,npts,pinit])




Parameters
~~~~~~~~~~


+ **f** : a Scilab external which gives the field of the dynamical
  system. Hence it can be a macro name which computes the field at time
  t and point x [y]=f(t,x,[u]) or a list list(f1,u1) where f1 is a macro
  of type [y]=f1(t,x,u) or a character string. The macro can be used to
  simulate a continuous or discrete system and in case of discrete
  system the second parameter must be set to 'discrete'
+ **options** : The other parameters are optional. If omitted they
  will be asked interactively

    + **odem** : gives the integration method to use. The value "default"
      can be used, otherwise see ode for a complete set of possibilities
    + **npts** : a vector of size (2,10) [number-of-points,step] gives the
      step for integration and the number of requested points. The solution
      will be calculated and drawn for time=0:step:(step*[number-of-points])
    + **xdim** : [xmin,xmax,ymin,ymax,zmin,zmax] the boundaries of the
      graphic frame.
    + **pinit** : initial values for integration. A set of initial points
      can be given in a matrix

::

        
        
              pinit = [x0(1), x1(1),...., xn(1)
                       x0(2), x1(2),...., xn(2)
                       x0(3), x1(3),...., xn(3)].
           
                        







Description
~~~~~~~~~~~

Interactive integration and display of a 2 dimensional phase portrait
of a dynamical system dx/dt=f(t,x,[u]) (where u is an optional
parameter )



Examples
~~~~~~~~


::

    
    
    a=rand(2,2)
    deff('[ydot]=l_s(t,y)','ydot=a*y')
    portrait(l_s)
     
      




See Also
~~~~~~~~

` **ode** `_,

.. _
      : ://./tdcs/../nonlinear/ode.htm


