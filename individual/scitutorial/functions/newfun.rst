====
"newfun"
====

Scilab Function Last update : April 1993
**newfun** - add a name in the table of functions



Calling Sequence
~~~~~~~~~~~~~~~~

newfun("function-name",nameptr)




Description
~~~~~~~~~~~

Utility function (for experts only). Adds the name **"function-name"**
in the table of functions known to the interpreter. **"nameptr"** is
an integer **100*fun+fin** where **fun** and **fin** is the internal
coding of the primitive **"function-name"** . This function is useful
to associate a primitive to a routine interfaced in **"matusr.f"** (
**fun=14** ). Used with **funptr** and **clearfun** one can redefine a
primitive by a function with same name.



See Also
~~~~~~~~

` **clearfun** `_,

.. _
      : ://./functions/clearfun.htm


