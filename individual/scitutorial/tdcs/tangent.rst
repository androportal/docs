====
"tangent"
====

Scilab Function Last update : 31/10/2006
**tangent** - linearization of a dynamical system at an equilibrium
point



Calling Sequence
~~~~~~~~~~~~~~~~

[f,g,newm]=tangent(ff,xe,[ue])




Parameters
~~~~~~~~~~


+ **ff** : a string which gives the name of the Scilab function which
  codes the system, or the fuunction itself.
+ **xe** : column vector which gives the equilibrium point for the
  value ue of the parameter
+ **ue** : real value.
+ **f, g** : two matrices for the linearised system **dxdot=f.dx +
  g.du**
+ **newm** : A new macro of type [y]=newm(t,x,u) which computes the
  field of the linearised system (newm(t,xe,ue)=0)




Description
~~~~~~~~~~~

linearises around the equilibrium point **(xe,ue)** the vector field
of the dynamical system given by a Scilab macro **ff** ,
**xdot=ff(t,x,[u])** . The dynamical system is supposed to be
autonomous.



