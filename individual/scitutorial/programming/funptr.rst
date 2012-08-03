====
"funptr"
====

Scilab Function Last update : April 1993
**funptr** - coding of primitives ( wizard stuff )



Calling Sequence
~~~~~~~~~~~~~~~~

[numptr] = funptr(name)




Parameters
~~~~~~~~~~


+ **name** : a string, the name of a primitive
+ **numptr** : the internal routine number of the primitive




Description
~~~~~~~~~~~

Utility function (for experts only) to get the internal routine number
**numptr** of the primitive **'name'** . **numptr** is formed from the
interface number **fun** and the routine number **fin** of the
primitive in its interface by **numptr = 100*fun + fin** (fin < 100).
From **numptr** you can get the interface number **fun =
floor(numptr/100)** which may be useful to link a dynamical interface
with arguments passed by reference (see example section).



Examples
~~~~~~~~


::

    
    
    // Suppose you want to load some codes via the dynamic 
    // loading facilities offers by addinter. By default 
    // arguments are passed by values but if you want to 
    // pass them by reference you can do the following 
    // (name being the scilab name of one of the interfaced 
    // routines) :
    //
    // addinter(files,spnames,fcts)  // args passed by values
    // num_interface = floor(funptr(name)/100)
    // intppty(num_interface)  // args now passed by reference
    //
    // Note that if you enter the following
    //
    // intppty()                
    //
    // you will see all the interfaces working by reference
     
      




See Also
~~~~~~~~

` **clearfun** `_,` **newfun** `_,` **intppty** `_,` **addinter** `_,

.. _
      : ://./programming/../functions/addinter.htm
.. _
      : ://./programming/../functions/newfun.htm
.. _
      : ://./programming/intppty.htm
.. _
      : ://./programming/../functions/clearfun.htm


